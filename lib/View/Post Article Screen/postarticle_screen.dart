import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postarticle_category.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postarticle_poster.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postarticle_title.dart';


import 'Controller/postarticle_controller.dart';
import 'Widgets/postarticle_body.dart';

class PostArticleScreen extends StatelessWidget {
  PostArticleScreen({super.key});

  final PostArticleController postArticleController =
  Get.find<PostArticleController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:
             Column(
                children: [
                  //Article Poster
                  PostArticlePoster(),
                  //Article Title
                  PostArticleTitle(),
                  //Article Body
                  PostArticleBody(),
                  //Article Choose Category
                  PostArticleCategory(),
                  SizedBox(
                    height: 50,
                  ),
                  //Button To Post Article
                  ElevatedButton(
                      onPressed: () {
                        postArticleController.postArticle();
                      },
                      child: Obx(
                        ()=> Text(
                          postArticleController.loading.value==true?
                          "صبر کن...": "پست"
                         ,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ))


                ],
              )


    )
        )
    );
  }
}
