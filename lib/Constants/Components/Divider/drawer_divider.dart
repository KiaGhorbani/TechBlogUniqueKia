import 'package:flutter/material.dart';

import '../../material_color.dart';

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({super.key, required this.size});
      final Size size;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: SolidColors.dividerColor,
      thickness: 1,

    );
  }
}
