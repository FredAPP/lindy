import 'package:flutter/material.dart';

class ArticleInfo {
  final String title;
  final String subtitle;
  final Icon icon;
  final Image img;

  ArticleInfo(
      {@required this.title,
      @required this.subtitle,
      @required this.icon,
      this.img});
}

List<ArticleInfo> articlesList = [
  ArticleInfo(
    title: 'The Swing Era',
    subtitle:
        'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...',
    icon: Icon(Icons.ac_unit),
  ),
  ArticleInfo(
    title: 'The Swing Putaria',
    subtitle: 'A galera não sabia que era música.',
    icon: Icon(Icons.transfer_within_a_station),
  ),
  ArticleInfo(
    title: 'The Swing Post-Era',
    subtitle:
        'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...',
    icon: Icon(Icons.ac_unit),
  ),
  ArticleInfo(
    title: 'The Swing Era',
    subtitle:
        'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...',
    icon: Icon(Icons.ac_unit),
  ),
  ArticleInfo(
    title: 'The Swing Era',
    subtitle:
        'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...',
    icon: Icon(Icons.ac_unit),
  ),
  ArticleInfo(
    title: 'The Swing Era',
    subtitle:
        'The swing era (also frequently referred to as the "big band era") was the period (1933–1947) when big band swing music was the most popular music in the United States...',
    icon: Icon(Icons.ac_unit),
  ),
];
