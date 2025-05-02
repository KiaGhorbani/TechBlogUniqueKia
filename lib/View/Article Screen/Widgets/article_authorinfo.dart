import 'package:flutter/material.dart';

class ArticleAuthorInfo extends StatelessWidget {
  const ArticleAuthorInfo({super.key, required this.author, required this.date});
  final String author;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/ProfileAvatar.png",
            scale: 8,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
           author,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 35,
          ),
          Text(date)
        ],
      ),
    );
  }
}
