import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Constants/material_color.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog_unique/View/Register%20Screen/Bindings/register_binding.dart';
import 'package:techblog_unique/View/splash_screen.dart';


void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.navBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));
      await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: RegisterBinding(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      locale: Locale("fa"),
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return SolidColors.primaryColor;
              }
              return SolidColors.colorTitle;
            },
          ), textStyle: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return TextStyle(fontSize: 17);
              }

              return TextStyle(fontSize: 15);
            },
          )),
        )),
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
        //MainScreen()
    );
  }
}
