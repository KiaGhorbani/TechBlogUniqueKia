import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20Screen/Controller/articlescreen_controller.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_authorinfo.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_body.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_poster.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_relatedarticles.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_relatedtags.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_title.dart';
import 'package:techblog_unique/View/Global%20Widgets/loading.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({super.key});

  final ArticleScreenController articleScreenController =
      Get.put(ArticleScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Obx(() => articleScreenController.loading.value == false
            ? Column(
                children: [
                  //Article Poster
                  ArticlePoster(
                    imageUrl: articleScreenController.articleInfo.value.image!,
                  ),
                  //Title
                  ArticleTitle(
                    articleTitle:
                        articleScreenController.articleInfo.value.title!,
                  ),
                  //Author & Post Info
                  ArticleAuthorInfo(
                    author: articleScreenController.articleInfo.value.author!,
                    date: articleScreenController.articleInfo.value.createdAt!,
                  ),
                  //Article Body
                  ArticleBody(
                    articleText:
                        articleScreenController.articleInfo.value.content!,
                  ),
                  //Tags
                  ArticleTags(),
                  //Related Blogs
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      child: ArticleRelatedArticles(
                    size: size,
                    title: 'نوشته های مرتبط',
                  ))
                ],
              )
            : SizedBox(height: 750, child: MyLoading())),
      ),
    ));
  }
}
