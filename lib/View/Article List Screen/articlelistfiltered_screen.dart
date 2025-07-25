import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20Screen/Controller/articlescreen_controller.dart';

import '../../Constants/material_color.dart';
import '../../Global Widgets/appbar.dart';
import '../../Global Widgets/loading.dart';
import 'Controller/articlelistfiltered_controller.dart';

class ArticleListFilteredScreen extends StatelessWidget {
  ArticleListFilteredScreen({super.key, required this.filteredTagName});

  final String filteredTagName;
  final ArticleListFilteredController articleListFilteredController =
      Get.put(ArticleListFilteredController());
  final ArticleScreenController articleScreenController =
      Get.put(ArticleScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: myAppBar(title: filteredTagName),
        body: Obx(
          () => articleListFilteredController.loading.value == false
              ? SizedBox(
                  child: ListView.builder(
                    itemCount: articleListFilteredController.articleList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          articleScreenController.getArticleInfo(
                              articleId: articleListFilteredController
                                  .articleList[index].id!);
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
                                  imageUrl: articleListFilteredController
                                      .articleList[index].image!,
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover)),
                                  ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.image_not_supported_rounded,
                                    size: 32,
                                    color: Colors.grey,
                                  ),
                                  placeholder: (context, url) =>
                                      SpinKitHourGlass(
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
                                        articleListFilteredController
                                            .articleList[index].title!,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      )),
                                  Row(
                                    children: [
                                      //Article Author
                                      Text(articleListFilteredController
                                          .articleList[index].author!),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      //Article View
                                      Text(articleListFilteredController
                                          .articleList[index].view!),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Icon(Icons.remove_red_eye_outlined),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      //Article Category Name
                                      Text(articleListFilteredController
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
                )
              : MyLoading(),
        ),
      ),
    );
  }
}
