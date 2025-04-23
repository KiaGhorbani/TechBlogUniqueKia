import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../../Constants/material_color.dart';
import '../Controller/homescreen_controller.dart';

class HomeScreenPoster extends StatelessWidget {
  HomeScreenPoster({super.key, required this.size});

  final Size size;
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //Poster
      SizedBox(
        width: size.width / 1.19,
        height: size.height / 4.2,
        child: CachedNetworkImage(
          imageUrl: homeScreenController.poster.value.image!,
          imageBuilder: (context, imageProvider) => Container(
            foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                gradient: LinearGradient(
                  colors: GradientColors.hottestListCover,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                image:
                    DecorationImage(image: imageProvider, fit: BoxFit.cover)),
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.image_not_supported_rounded,
            size: 32,
            color: Colors.grey,
          ),
          placeholder: (context, url) => SpinKitHourGlass(
            color: SolidColors.primaryColor,
            size: 32,
          ),
        ),
      ),
      //Poster Gradient
      Container(
        width: size.width / 1.19,
        height: size.height / 4.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
                colors: GradientColors.posterCover,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
      ),
      //-----------------
      //Meta Data Begin
      Positioned(
        top: 140,
        child: Text(
          "  ملیکا عزیزی - یک روز پیش",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Positioned(
          top: 140,
          left: 20,
          child: Text(
            "253",
            style: TextStyle(color: Colors.white),
          )),
      Positioned(
          top: 143,
          left: 47,
          child: Icon(
            CupertinoIcons.heart_fill,
            color: Colors.white,
            size: 15,
          )),
      Positioned(
        top: 180,
        left: 30,
        child: Text(
         homeScreenController.poster.value.title!,
          style: TextStyle(fontSize: 13, color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      //Meta Data End
    ]);
  }
}
