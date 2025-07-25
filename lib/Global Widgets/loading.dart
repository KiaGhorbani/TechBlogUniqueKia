import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../Constants/material_color.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SpinKitPulsingGrid(
      color: SolidColors.primaryColor,
      size: 32,
    );
  }
}
