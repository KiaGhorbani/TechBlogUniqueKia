import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/material_color.dart';
import '../../Article List Screen/Controller/articlelistfiltered_controller.dart';
import '../../Home Screen/Controller/homescreen_controller.dart';

class PostScreenCatList extends StatelessWidget {
  PostScreenCatList({super.key});

  final HomeScreenController homeScreenController =
  Get.find<HomeScreenController>();
  final ArticleListFilteredController articleListFilteredController =
  Get.put(ArticleListFilteredController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 20,
          childAspectRatio: 0.9

        ),
        itemCount: homeScreenController.homePageTags.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
             //TODO Add to post article screen
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SolidColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child:Center(
                child: Text(
                  homeScreenController.homePageTags[index].title!,
                  style: TextStyle(color: Colors.white),
                ),
              ),

            ),
          );
        },
      ),
    );
  }
}
