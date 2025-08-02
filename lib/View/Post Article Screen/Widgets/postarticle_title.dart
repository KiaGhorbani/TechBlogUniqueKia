import 'package:flutter/material.dart';

import '../../../Constants/material_color.dart';

class PostArticleTitle extends StatelessWidget {
  const PostArticleTitle({
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
              SizedBox(width: 8,),
              Text("ویرایش عنوان مقاله")
            ],
          ),
          SizedBox(height: 8,),
          Text(
            "اینجا عنوان مقاله قرار میگیره ، یه عنوان جذاب انتخاب کن",
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
