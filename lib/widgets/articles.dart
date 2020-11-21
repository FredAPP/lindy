import 'package:flutter/material.dart';
import 'package:telalogin/models/article_info.dart';

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articlesList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(articlesList[index].title),
        subtitle: Text(articlesList[index].subtitle),
        leading: articlesList[index].icon,
      ),
    );
  }
}
