import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Controller/postarticle_controller.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Widgets/postscreen_catlist.dart';

import '../../../Constants/material_color.dart';

class PostArticleCategory extends StatelessWidget {
  PostArticleCategory({
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
          Row(
            children: [
              ImageIcon(
                Image.asset("assets/icons/BluePen.png").image,
                size: 20,
                color: SolidColors.colorTitle,
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                  onTap: () => chooseCatBottomSheet(),
                  child: Text("انتخاب دسته بندی"))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Obx(
            () => Text(
              postArticleController.article.value.catName == null
                  ? "هیچ دسته بندی ای انتخاب نکردی"
                  : postArticleController.article.value.catName!,
              style: TextStyle(fontSize: 20),
            ),
          ),

        ],
      ),
    );
  }

  void chooseCatBottomSheet() {
    Get.bottomSheet(
        isScrollControlled: true,
        Container(
          height: Get.height / 1.7,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("انتخاب دست بندی"),
                SizedBox(
                  height: 15,
                ),
                PostScreenCatList()
              ],
            ),
          ),
        ));
  }
}
