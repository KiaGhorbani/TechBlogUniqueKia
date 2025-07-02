import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/Controller/articlelist_controller.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/articlelist_screen.dart';

import '../../../Constants/material_color.dart';
import '../Controller/articlescreen_controller.dart';

class ArticleTags extends StatelessWidget {
  ArticleTags({super.key,});

  final ArticleScreenController articleScreenController =
      Get.find<ArticleScreenController>();
  final ArticleListController articleListController =
  Get.find<ArticleListController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articleScreenController.relatedTags.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              String tagId = articleScreenController.relatedTags[index].id!;
                articleListController.getArticleListItemsByTags(tagId);
                Get.to(ArticleListScreen());


            },

            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 32, 16, 16),
              child: Container(
                decoration: BoxDecoration(
                    color: SolidColors.selectedCategoryColor,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: SizedBox(
                  width: 125,
                  child: Center(
                    child: Text(
                      articleScreenController.relatedTags[index].title!,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
