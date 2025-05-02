import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({super.key, required this.articleTitle});
  final String articleTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        articleTitle,
        maxLines: 2,
        style: TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}
