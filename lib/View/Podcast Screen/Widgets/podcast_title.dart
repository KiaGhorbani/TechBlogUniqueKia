import 'package:flutter/material.dart';

class PodcastTitle extends StatelessWidget {
  const PodcastTitle({super.key, required this.articleTitle});

  final String articleTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          articleTitle,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
      ),
    );
  }
}
