import 'package:flutter/material.dart';


import '../../../Constants/material_color.dart';

class PostArticleCategory extends StatelessWidget {
  const PostArticleCategory({
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
              Text("انتخاب دسته بندی")
            ],
          ),
          SizedBox(
            height: 18,
          ),
          //TODO choose categories
        ],
      ),
    );
  }
}
