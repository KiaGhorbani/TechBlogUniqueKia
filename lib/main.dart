import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techblog_unique/Constants/material_color.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/articlelist_screen.dart';
import 'package:techblog_unique/View/main_screen.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.navBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));

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
        home: ArticleListScreen()
        //MainScreen()
    );
  }
}
