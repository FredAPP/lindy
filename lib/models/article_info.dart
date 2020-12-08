import 'package:flutter/material.dart';

class ArticleInfo {
  // icon, titulo, texto
  final Icon icon;
  final String title;
  final String text;
  Image img;

  ArticleInfo({
    @required this.icon,
    @required this.title,
    @required this.text,
    this.img,
  });
}

List<ArticleInfo> articlesList = [
  ArticleInfo(
      icon: Icon(Icons.play_circle_outline),
      title: 'The Swing Era',
      text:
          'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...'),
  ArticleInfo(
      icon: Icon(Icons.list),
      title: 'The Swing Music',
      text:
          'Swing music is a form of jazz that developed in the United States in the 1930s and 1940s. The name came from the emphasis on the off–beat, or weaker pulse.'),
  ArticleInfo(
      icon: Icon(Icons.album),
      title: 'The Big Band',
      text:
          'A big band is a type of musical ensemble of jazz music that usually consists of ten or more musicians with four sections: saxophones, trumpets, trombones, and a rhythm section.'),
  ArticleInfo(
      icon: Icon(Icons.play_circle_outline),
      title: 'The Swing Era',
      text:
          'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...'),
  ArticleInfo(
      icon: Icon(Icons.list),
      title: 'The Swing Music',
      text:
          'Swing music is a form of jazz that developed in the United States in the 1930s and 1940s. The name came from the emphasis on the off–beat, or weaker pulse.'),
  ArticleInfo(
      icon: Icon(Icons.album),
      title: 'The Big Band',
      text:
          'A big band is a type of musical ensemble of jazz music that usually consists of ten or more musicians with four sections: saxophones, trumpets, trombones, and a rhythm section.'),
  ArticleInfo(
      icon: Icon(Icons.play_circle_outline),
      title: 'The Swing Era',
      text:
          'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...'),
  ArticleInfo(
      icon: Icon(Icons.list),
      title: 'The Swing Music',
      text:
          'Swing music is a form of jazz that developed in the United States in the 1930s and 1940s. The name came from the emphasis on the off–beat, or weaker pulse.'),
  ArticleInfo(
      icon: Icon(Icons.album),
      title: 'The Big Band',
      text:
          'A big band is a type of musical ensemble of jazz music that usually consists of ten or more musicians with four sections: saxophones, trumpets, trombones, and a rhythm section.'),
];
