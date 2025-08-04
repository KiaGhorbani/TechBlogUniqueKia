import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/material_color.dart';

class PostArticlePoster extends StatelessWidget {
  const PostArticlePoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Poster
        Image.asset("assets/images/Articlepageplaceholder.jpg"),
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
            ))
      ],
    );
  }
}
