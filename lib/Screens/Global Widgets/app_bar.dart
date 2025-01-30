import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //AppBar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu_sharp),
          Image.asset(
            'assets/images/Logo.png',
            width: size.width / 3.7,
          ),
          Icon(Icons.search_sharp)
        ],
      ),
    );
  }
}
