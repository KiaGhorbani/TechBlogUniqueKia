import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/editbody_screen.dart';

import '../../../Constants/material_color.dart';
import '../../../Global Widgets/loading.dart';
import '../Controller/postarticle_controller.dart';

class PostArticleBody extends StatelessWidget {
   PostArticleBody({
    super.key,
  });
  final PostArticleController postArticleController = Get.find<PostArticleController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.to(EditBodyScreen()),
            child: Row(
              children: [
                ImageIcon(
                  Image.asset("assets/icons/BluePen.png").image,
                  size: 20,
                  color: SolidColors.colorTitle,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("ویرایش متن اصلی مقاله")
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Obx(
            () =>  HtmlWidget(
              postArticleController.article.value.content!,
              onLoadingBuilder: (context, element, loadingProgress) =>
                  MyLoading(),
              enableCaching: true,
              textStyle: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
