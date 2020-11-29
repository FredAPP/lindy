import 'package:flutter/material.dart';
import 'package:telalogin/widgets/card_videos.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lindy App'),
      ),
      body: CardVideos(),
    );
  }
}
