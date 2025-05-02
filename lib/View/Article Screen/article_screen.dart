import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_authorinfo.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_body.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_poster.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_tags.dart';
import 'package:techblog_unique/View/Article%20Screen/Widgets/article_title.dart';

import 'package:techblog_unique/View/Home%20Screen/Widgets/homescreen_hottestarticles.dart';
import '../Home Screen/Controller/homescreen_controller.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({super.key});

  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //Article Poster
            ArticlePoster(
              imageUrl: '',
            ),
            //Title
            ArticleTitle(
              articleTitle:
                  "datadahasfhakfhaifhquifhuiashfauiohfuiahfuiashfuiohafahuifhasiof",
            ),
            //Author & Post Info
            ArticleAuthorInfo(
              author: "فاطمه امیری",
              date: "2 روز پیش",
            ),
            //Article Body
            ArticleBody(
              articleText: '''
            <h1>Heading 1</h1>
        <h2>Heading 2</h2>
        <h3>Heading 3</h3>
        <h4>Heading 4</h4>
        <h5>Heading 5</h5>
        <h6>Heading 6</h6>
            
            
            ''',
            ),
            //Tags
            ArticleTags(
              tagName: 'بازی کامپیوتری',
            ),
            //Related Blogs
            SizedBox(
              height: 25,
            ),
            SizedBox(
                child: HomeScreenHottestArticles(
              size: size,
              title: 'نوشته های مرتبط',
            ))
          ],
        ),
      ),
    ));
  }
}
