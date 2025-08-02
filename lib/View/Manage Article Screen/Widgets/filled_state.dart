import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Global%20Widgets/loading.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/Controller/managearticle_controller.dart';

import '../../../Constants/material_color.dart';
import '../../../Constants/pages_routing.dart';

class ManageArticleFilledState extends StatelessWidget {
  ManageArticleFilledState({super.key, required this.size});

  final Size size;
  final ManageArticleController manageArticleController =
      Get.find<ManageArticleController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => manageArticleController.loading.value == false
        ? Stack(children: [
            //Pending Articles
            SizedBox(
              child: ListView.builder(
                itemCount: manageArticleController.publishedArticles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //TODO Route to in progress Article Screen
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
                              imageUrl: manageArticleController
                                  .publishedArticles[index].image!,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover)),
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
                                    manageArticleController
                                        .publishedArticles[index].title!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  )),
                              Row(
                                children: [
                                  //Article Author
                                  Text(manageArticleController
                                      .publishedArticles[index].author!),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  //Article View
                                  Text(manageArticleController
                                      .publishedArticles[index].view!),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Icon(Icons.remove_red_eye_outlined),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  //Article Category Name
                                  Text(manageArticleController
                                      .publishedArticles[index].catName!),
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
            ),
            //Button To Write Article
            Positioned(
              bottom: 5,
              right: 5,
              left: 5,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(MyRoutes.postArticleScreen);
                },
                child: Container(
                  width: size.width / 1,
                  height: 50,
                  decoration: BoxDecoration(
                      color: SolidColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Text(
                      "بریم برای نوشتن یه مقاله ی باحال",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ])
        : MyLoading());
  }
}
