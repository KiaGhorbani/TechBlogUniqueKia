import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constants/material_color.dart';

class HomescreenPoster extends StatelessWidget {
  const HomescreenPoster({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //Poster
      Container(
        width: size.width / 1.19,
        height: size.height / 4.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
              image: Image.asset('assets/images/HomepagePoster.png')
                  .image,
              fit: BoxFit.cover),
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
        top: 175,
        left: 40,
        child: Text(
          "دوازده قدم برنامه نویسی یک دوره ی...",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      //Meta Data End
    ]);
  }
}
