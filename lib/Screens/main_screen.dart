import 'package:flutter/material.dart';
import 'package:techblog_unique/Screens/Global%20Widgets/bottom_navigation.dart';
import 'package:techblog_unique/Screens/Home%20Screen/home_screen.dart';
import 'package:techblog_unique/Screens/Profile%20Screen/profile_screen.dart';

import '../Constants/material_color.dart';
import 'Global Widgets/app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: SolidColors.scaffoldBg,
          automaticallyImplyLeading: false,
          title: MyAppBar(size: size)
      ),
      body: Stack(children: [
        
        Positioned.fill(child:ProfileScreen(size: size,) ),
        MyBottomNavigation(size: size)
        
        
        
        
      ],),
      
      
      
      
      
      
      
      
      
    ));
  }
}
