import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import '../../../Constants/material_color.dart';

class TechTextField extends StatelessWidget {
  const TechTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(width: 2)),
          hintText: hintText,
          hintStyle: TextStyle(color: SolidColors.hintColor),
        ),
        onChanged: (value) {
          debugPrint(isEmail(value).toString());
        },
      ),
    );
  }
}
