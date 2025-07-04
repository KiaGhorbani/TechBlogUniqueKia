import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/articlelist_screen.dart';
import 'package:techblog_unique/View/Article%20Screen/Controller/articlescreen_controller.dart';
import 'package:techblog_unique/View/Home%20Screen/Controller/homescreen_controller.dart';
import '../../../Constants/material_color.dart';

class HomeScreenHottestArticles extends StatelessWidget {
  final Size size;
  final String title;

  HomeScreenHottestArticles(
      {super.key, required this.size, required this.title});

  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  final ArticleScreenController articleScreenController =
      Get.put(ArticleScreenController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          //Title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(ArticleListScreen());
              },
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ImageIcon(
                        Image.asset("assets/icons/BluePen.png").image,
                        size: 20,
                        color: SolidColors.colorTitle,
                      )),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: SolidColors.colorTitle),
                  )
                ],
              ),
            ),
          ),
          //Items
          SizedBox(
            height: size.height / 4.3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: homeScreenController.topArticles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      articleScreenController.getArticleInfo(
                          articleId:
                              homeScreenController.topArticles[index].id!);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: size.height / 7,
                                width: size.width / 2.5,
                                child: CachedNetworkImage(
                                  imageUrl: homeScreenController
                                      .topArticles[index].image!,
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    foregroundDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        gradient: LinearGradient(
                                          colors:
                                              GradientColors.hottestListCover,
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )),
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
                              Positioned(
                                  top: 98,
                                  right: 10,
                                  child: Text(
                                    homeScreenController
                                        .topArticles[index].author!,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )),
                              Positioned(
                                  top: 98,
                                  right: 95,
                                  child: Row(
                                    children: [
                                      Text(
                                        homeScreenController
                                            .topArticles[index].view!,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.remove_red_eye_sharp,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: size.width / 2.5,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8, top: 4),
                              child: Text(
                                homeScreenController.topArticles[index].title!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
