import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/articlelistfiltered_screen.dart';

import '../../../Constants/material_color.dart';
import '../../Article List Screen/Controller/articlelistfiltered_controller.dart';
import '../Controller/homescreen_controller.dart';

class HomeScreenTagList extends StatelessWidget {
  HomeScreenTagList({super.key});

  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  final ArticleListFilteredController articleListFilteredController =
      Get.put(ArticleListFilteredController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeScreenController.homePageTags.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                articleListFilteredController.getArticleListItemsByTags(
                    tagId: homeScreenController.homePageTags[index].id!);
                Get.to(ArticleListFilteredScreen(
                  filteredTagName:
                      homeScreenController.homePageTags[index].title!,
                ));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 37, 16, 16),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: GradientColors.tagsColor,
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft),
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ImageIcon(
                          Image.asset("assets/icons/Hashtag.png").image,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          homeScreenController.homePageTags[index].title!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
