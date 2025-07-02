import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/Controller/articlelist_controller.dart';
import 'package:techblog_unique/View/Article%20Screen/Controller/articlescreen_controller.dart';
import 'package:techblog_unique/View/Article%20Screen/article_screen.dart';
import 'package:techblog_unique/View/Global%20Widgets/appbar.dart';
import 'package:techblog_unique/View/Global%20Widgets/loading.dart';

import '../../Constants/material_color.dart';

class ArticleListScreen extends StatelessWidget {
  ArticleListScreen({super.key});

  final ArticleListController articleListController =
      Get.put(ArticleListController());
  final ArticleScreenController articleScreenController = Get.put(ArticleScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar(title: 'مقالات جدید'),
        body: Obx(
          () => articleListController.loading.value == false ? SizedBox(
            child: ListView.builder(
              itemCount: articleListController.articleList.length,
              itemBuilder: (context, index) {
                return GestureDetector(

                  onTap: () {

                    articleScreenController.articleId.value = articleListController.articleList[index].id!;
                    articleScreenController.getArticleInfo();
                    Get.to(ArticleScreen());

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Article Images
                        SizedBox(
                          height: size.height / 8,
                          width: size.width / 3,
                          child: CachedNetworkImage(
                            imageUrl:
                                articleListController.articleList[index].image!,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover)),
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.image_not_supported_rounded,
                              size: 32,
                              color: Colors.grey,
                            ),
                            placeholder: (context, url) => SpinKitHourGlass(
                              color: SolidColors.primaryColor,
                              size: 32,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        //Article MetaData
                        Column(
                          children: [
                            //Article Title
                            SizedBox(
                                height: 70,
                                width: size.width / 1.67,
                                child: Text(
                                  articleListController.articleList[index].title!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                )),
                            Row(
                              children: [
                                //Article Author
                                Text(articleListController
                                    .articleList[index].author!),
                                SizedBox(
                                  width: 5,
                                ),
                                //Article View
                                Text(articleListController
                                    .articleList[index].view!),
                                SizedBox(
                                  width: 1,
                                ),
                                Icon(Icons.remove_red_eye_outlined),
                                SizedBox(
                                  width: 30,
                                ),
                                //Article Category Name
                                Text(articleListController
                                    .articleList[index].catName!),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ): MyLoading(),
        ),
      ),
    );
  }
}
