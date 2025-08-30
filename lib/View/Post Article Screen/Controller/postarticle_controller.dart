import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Constants/material_color.dart';
import 'package:techblog_unique/Model/ArticlePage/articleinfo_model.dart';

import 'package:techblog_unique/Model/HomePage/tags_model.dart';

class PostArticleController extends GetxController {
  Rx<ArticleInfoModel> article = ArticleInfoModel(
    'اینجا عنوان مقاله قرار میگیره ، یه عنوان جذاب انتخاب کن',
    '',
    '''من متن و بدنه اصلی مقاله هستم ، اگه میخوای من رو ویرایش کنی و یه مقاله جذاب بنویسی ، نوشته آبی رنگ بالا که نوشته "ویرایش متن اصلی مقاله" رو با انگشتت لمس کن تا وارد ویرایشگر بشی''',
  ).obs;
  RxList<TagsModel> inProgressArticleTags = RxList.empty();
  TextEditingController titleController = TextEditingController();

  RxBool loading = false.obs;

  void updateTitle() {
    Get.defaultDialog(
      title: "عنوان مقاله ات رو انتخاب کن",
      titleStyle: TextStyle(color: SolidColors.scaffoldBg),
      backgroundColor: SolidColors.primaryColor,
      content: TextField(
        controller: titleController,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            fillColor: SolidColors.scaffoldBg,
            filled: true),
      ),
      radius: 16,
      confirm: ElevatedButton(
          onPressed: () {
            article.update(
              (val) => val!.title = titleController.text,
            );
            Get.back();
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(SolidColors.scaffoldBg)),
          child: Text("ثبت", style: TextStyle(color: Colors.black))),
    );
  }
}
