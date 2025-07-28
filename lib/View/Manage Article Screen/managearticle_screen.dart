import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/Global%20Widgets/appbar.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/Widgets/empty_state.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/Widgets/filled_state.dart';

import 'Controller/managearticle_controller.dart';

class ManageArticleScreen extends StatelessWidget {
  ManageArticleScreen({super.key});

  final ManageArticleController manageArticleController =
      Get.find<ManageArticleController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: myAppBar(title: "مدیریت مقاله ها"),
            body: Obx(() => manageArticleController.loading.value == false &&
                    manageArticleController.publishedArticles.isEmpty
                ? ManageArticleEmptyState(size: size)
                : ManageArticleFilledState(size: size))));
  }
}
