import 'package:flutter/material.dart';

import '../material_color.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, required this.size});
      final Size size;
  @override
  Widget build(BuildContext context) {
    return    Divider(
      color: SolidColors.dividerColor,
      indent: size.width/6,
      endIndent: size.width/6,
    );
  }
}
