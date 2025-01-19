import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techblog_unique/Constants/material_color.dart';
import 'package:techblog_unique/Screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.navBarColor,
    systemNavigationBarIconBrightness: Brightness.dark



  ));



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('fa', ''),
        ],
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}


