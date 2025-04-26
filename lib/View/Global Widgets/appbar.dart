import 'package:flutter/material.dart';
import 'package:techblog_unique/Constants/material_color.dart';

PreferredSize myAppBar({required String title}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Text(
              title,
              style: TextStyle(fontSize: 18),
            )
          ],
          leading: Center(
              child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: SolidColors.primaryColor, shape: BoxShape.circle),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          )),
        ),
      ));
}
