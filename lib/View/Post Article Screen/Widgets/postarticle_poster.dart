import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Global%20Widgets/loading.dart';
import 'package:techblog_unique/Services/filepicker_service.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Controller/postarticle_controller.dart';

import '../../../Constants/material_color.dart';
import '../Controller/pickimage_controller.dart';

class PostArticlePoster extends StatelessWidget {
  PostArticlePoster({
    super.key,
  });

  final PickImageController pickImageController =
      Get.put(PickImageController());
  final PostArticleController postArticleController =
      Get.find<PostArticleController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  Stack(
        children: [
          //Poster
          pickImageController.pickedImage.value.name == "null"?
          CachedNetworkImage(
            imageUrl: postArticleController.article.value.image!,
            imageBuilder: (context, imageProvider) => Image(image: imageProvider),
            placeholder: (context, url) => MyLoading(),
            errorWidget: (context, url, error) =>
                Image.asset("assets/images/Articlepageplaceholder.jpg"),
          ):Image.file(File(pickImageController.pickedImage.value.path!), fit: BoxFit.cover,),

          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: GradientColors.articleScreenCover)),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                    onPressed: Get.back,
                  ),
                ),
              )),
          //Button For Choosing Poster From Gallery
          Positioned(
              bottom: 0,
              right: 140,
              child: GestureDetector(
                onTap: () async=> await FilePickerService().imagePicker(),
                child: Container(
                  width: 130,
                  height: 35,
                  decoration: BoxDecoration(
                      color: SolidColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "انتخاب تصویر",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
