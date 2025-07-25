import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../Global Widgets/loading.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({super.key, required this.articleText});
  final String articleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: HtmlWidget(
        articleText,
        onLoadingBuilder: (context, element, loadingProgress) =>
            MyLoading(),
        enableCaching: true,
        textStyle: TextStyle(color: Colors.black54),
      ),
    );
  }
}
