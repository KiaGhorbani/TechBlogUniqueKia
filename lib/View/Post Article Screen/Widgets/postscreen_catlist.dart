import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/material_color.dart';
import '../../Home Screen/Controller/homescreen_controller.dart';
import '../Controller/postarticle_controller.dart';

class PostScreenCatList extends StatelessWidget {
  PostScreenCatList({super.key});

  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  final PostArticleController postArticleController =
      Get.find<PostArticleController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9),
        itemCount: homeScreenController.homePageTags.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              postArticleController.article.update((val) {
                val?.catName = homeScreenController.homePageTags[index].title!;
                val?.id = homeScreenController.homePageTags[index].id!;
              });
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SolidColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Center(
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
