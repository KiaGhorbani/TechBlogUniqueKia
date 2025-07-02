import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../Constants/material_color.dart';


class ArticlePoster extends StatelessWidget {
   const ArticlePoster({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Poster
        CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => Image(image: imageProvider),
          errorWidget: (context, url, error) =>
              Image.asset("assets/images/Articlepageplaceholder.jpg"),
          placeholder: (context, url) => SpinKitHourGlass(
            color: SolidColors.primaryColor,
            size: 32,
          ),
        ),
        //Icons & gradient Cover
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
