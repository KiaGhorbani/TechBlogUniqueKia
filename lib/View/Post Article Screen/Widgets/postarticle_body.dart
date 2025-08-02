import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../Constants/material_color.dart';
import '../../../Global Widgets/loading.dart';

class PostArticleBody extends StatelessWidget {
  const PostArticleBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
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
          SizedBox(
            height: 8,
          ),
          HtmlWidget(
            '''من متن و بدنه اصلی مقاله هستم ، اگه میخوای من رو ویرایش کنی و یه مقاله جذاب بنویسی ، نوشته آبی رنگ بالا که نوشته "ویرایش متن اصلی مقاله" رو با انگشتت لمس کن تا وارد ویرایشگر بشی''',
            onLoadingBuilder: (context, element, loadingProgress) =>
                MyLoading(),
            enableCaching: true,
            textStyle: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
