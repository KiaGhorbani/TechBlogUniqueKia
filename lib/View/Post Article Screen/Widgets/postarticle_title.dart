import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Controller/postarticle_controller.dart';

import '../../../Constants/material_color.dart';

class PostArticleTitle extends StatelessWidget {
  PostArticleTitle({
    super.key,
  });

  final PostArticleController postArticleController =
      Get.find<PostArticleController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => postArticleController.updateTitle(),
            child: Row(
              children: [
                ImageIcon(
                  Image.asset("assets/icons/BluePen.png").image,
                  size: 20,
                  color: SolidColors.colorTitle,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("ویرایش عنوان مقاله")
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Obx(
            () => Text(
              postArticleController.article.value.title!,
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
