import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Components/Strings/registerpage_strings.dart';
import '../../../Constants/material_color.dart';

class ManageArticleEmptyState extends StatelessWidget {
  const ManageArticleEmptyState({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          //TechBot
          SvgPicture.asset("assets/images/SadgeTechBot.svg",
              width: size.width / 3.5, height: size.height / 6.8),
          //Intro
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: RegisterPageStrings.manageArticle,
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 280,
          ),
          //Button
          GestureDetector(
            onTap: () {
              //TODO Route to manage article screen



            },

            child: Container(
              width: size.width / 1.3,
              height: 50,
              decoration: BoxDecoration(
                  color: SolidColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                child: Text(
                  "بریم برای نوشتن یه مقاله ی باحال",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
