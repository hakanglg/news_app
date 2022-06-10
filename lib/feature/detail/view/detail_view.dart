import 'package:flutter/material.dart';

import '../../home/model/articles_model.dart';

class DetailView extends StatelessWidget {
  final Articles article;

  const DetailView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title ?? ""),
      ),
    );
  }
}
