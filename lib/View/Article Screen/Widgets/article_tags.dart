import 'package:flutter/material.dart';

import '../../../Constants/material_color.dart';

class ArticleTags extends StatelessWidget {
  const ArticleTags({super.key, required this.tagName});
  final String tagName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0,32,16,16),
            child: Container(
              decoration: BoxDecoration(
                  color: SolidColors.selectedCategoryColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(16))),
              child: SizedBox(
                width: 105,
                child: Center(
                  child: Text(
                    tagName,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),


            ),
          );
        },
      ),
    );
  }
}
