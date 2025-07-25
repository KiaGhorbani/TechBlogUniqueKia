import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Constants/pages_routing.dart';

class RegisterBottomSheet {
  void articlePodcastManagement() {
    Get.bottomSheet(

        Container(
      height: Get.height / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        //MetaData
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/TechBot.svg",
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("دونسته هات رو با بقیه به اشتراک بذار ...")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('''فکر کن !!  اینجا بودنت به این معناست که یک گیک تکنولوژی هستی
دونسته هات رو با  جامعه‌ی گیک های فارسی زبان به اشتراک بذار..'''),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                //Route To Manage ArticlePage
                GestureDetector(
                  onTap: () {
                   Get.toNamed(MyRoutes.manageArticleScreen);
                  },
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/ManageArticle.png",
                          height: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("مدیریت مقاله ها")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 75,
                ),
                //Route To Manage Podcast Page
                GestureDetector(
                  onTap: () {
                    log("Manage Podcast Page");
                  },
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/ManagePodcast.png",
                          height: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("مدیریت پادکست ها")
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
