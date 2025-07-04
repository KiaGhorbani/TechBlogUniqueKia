import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/articlelistfiltered_screen.dart';

import '../../../Constants/material_color.dart';
import '../../Article List Screen/Controller/articlelistfiltered_controller.dart';
import '../Controller/articlescreen_controller.dart';

class ArticleTags extends StatelessWidget {
  ArticleTags({
    super.key,
  });

  final ArticleScreenController articleScreenController =
      Get.find<ArticleScreenController>();
  final ArticleListFilteredController articleListFilteredController =
      Get.put(ArticleListFilteredController());

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
              articleListFilteredController.getArticleListItemsByTags(
                  tagId: articleScreenController.relatedTags[index].id!);
              Get.to(ArticleListFilteredScreen(
                filteredTagName:
                    articleScreenController.relatedTags[index].title!,
              ));
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
