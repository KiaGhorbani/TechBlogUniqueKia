import 'package:flutter/material.dart';

import '../../Constants/material_color.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key,required this.size});

  final Size size;

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
                      onPressed: () {},
                      icon: ImageIcon(
                        Image.asset("assets/icons/BottomNavHome.png").image,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                          Image.asset("assets/icons/BottomNavWrite.png")
                              .image,
                          color: Colors.white)),
                  IconButton(
                      onPressed: () {},
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
