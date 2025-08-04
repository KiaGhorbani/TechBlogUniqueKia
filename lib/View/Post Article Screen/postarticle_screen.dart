import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20Screen/Controller/articlescreen_controller.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postarticle_category.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postarticle_poster.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postarticle_title.dart';

import '../../Global Widgets/loading.dart';
import 'Widgets/postarticle_body.dart';

class PostArticleScreen extends StatelessWidget {
  PostArticleScreen({super.key});

  final ArticleScreenController articleScreenController =
      Get.find<ArticleScreenController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Obx(() => articleScreenController.loading.value == false
            ? Column(
                children: [
                  //Article Poster
                  PostArticlePoster(),
                  //Article Title
                  PostArticleTitle(),
                  //Article Body
                  PostArticleBody(),
                  //Article Choose Category
                  PostArticleCategory()
                ],
              )
            : SizedBox(height: 750, child: MyLoading())),
      ),
    ));
  }
}
