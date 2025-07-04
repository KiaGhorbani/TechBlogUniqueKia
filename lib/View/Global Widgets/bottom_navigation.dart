import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Register%20Screen/register_screen.dart';

import '../../Constants/material_color.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key,required this.size, required this.screenHandler});

  final Size size;
  final Function(int) screenHandler;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: size.height / 5.89,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: GradientColors.bottomNavigationBg,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Container(
            height: size.height / 12.35,
            width: size.width / 1.3,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: GradientColors.bottomNavigation,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: ()=> screenHandler(0),
                      icon: ImageIcon(
                        Image.asset("assets/icons/BottomNavHome.png").image,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        Get.to(RegisterScreen(size: size));

                        
                      },
                      icon: ImageIcon(
                          Image.asset("assets/icons/BottomNavWrite.png")
                              .image,
                          color: Colors.white)),
                  IconButton(
                      onPressed: ()=> screenHandler(1),
                      icon: ImageIcon(
                          Image.asset("assets/icons/BottomNavUser.png")
                              .image,
                          color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
