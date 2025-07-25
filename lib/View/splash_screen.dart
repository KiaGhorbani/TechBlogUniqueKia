import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Constants/material_color.dart';
import 'package:techblog_unique/Constants/pages_routing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value){

      Get.offAndToNamed(MyRoutes.mainScreen);



    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/Splash.png"),
          ),
          SpinKitSquareCircle(
            size: 50,
            color: SolidColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
