import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:techblog_unique/Global%20Widgets/appbar.dart';

import 'Controller/postarticle_controller.dart';

class EditBodyScreen extends StatelessWidget {
  EditBodyScreen({super.key});

  final HtmlEditorController controller = HtmlEditorController();
  final PostArticleController postArticleController =
      Get.find<PostArticleController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.clearFocus(),
      child: Scaffold(
        appBar: myAppBar(title: "یک مقاله ی جذاب بنویس"),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HtmlEditor(
                controller: controller,
                htmlEditorOptions: HtmlEditorOptions(
                  hint: "Write Here",
                    initialText: postArticleController.article.value.content,
                    shouldEnsureVisible: true),
                callbacks: Callbacks(
                  onChangeContent: (p0) =>
                      postArticleController.article.value.content == p0,
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    
                  }, child: Text("data"))
                  
                  
                ],
                
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
