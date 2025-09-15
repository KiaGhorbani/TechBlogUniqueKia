import 'dart:developer';

import 'package:dio/dio.dart' as postdio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Constants/material_color.dart';
import 'package:techblog_unique/Constants/my_api.dart';
import 'package:techblog_unique/Constants/postarticle_apikey.dart';
import 'package:techblog_unique/Constants/storage.dart';
import 'package:techblog_unique/Model/ArticlePage/articleinfo_model.dart';

import 'package:techblog_unique/Model/HomePage/tags_model.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Controller/pickimage_controller.dart';

import '../../../Services/dio_service.dart';

class PostArticleController extends GetxController {
  Rx<ArticleInfoModel> article = ArticleInfoModel(
    'اینجا عنوان مقاله قرار میگیره ، یه عنوان جذاب انتخاب کن',
    '',
    '''من متن و بدنه اصلی مقاله هستم ، اگه میخوای من رو ویرایش کنی و یه مقاله جذاب بنویسی ، نوشته آبی رنگ بالا که نوشته "ویرایش متن اصلی مقاله" رو با انگشتت لمس کن تا وارد ویرایشگر بشی''',
  ).obs;
  RxList<TagsModel> inProgressArticleTags = RxList.empty();
  TextEditingController titleController = TextEditingController();

  RxBool loading = false.obs;

  void updateArticleTitle() {
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

  void postArticle() async {
    loading.value = true;
    final PickImageController pickImageController =
        Get.find<PickImageController>();

    Map<String, dynamic> postMap = {
      PostArticleApiKey.title: article.value.title,
      PostArticleApiKey.content: article.value.content,
      PostArticleApiKey.catId: article.value.catId,
      PostArticleApiKey.tagList: "[]",
      PostArticleApiKey.userId: GetStorage().read(MyStorage.userId),
      PostArticleApiKey.image: await postdio.MultipartFile.fromFile(
          pickImageController.pickedImage.value.path!),
      PostArticleApiKey.command: 'store',
    };
    dynamic response = await MyDioService().post(postMap, MyUrl.postUrl);
    log(response.data.toString());

    loading.value = false;
  }
}
