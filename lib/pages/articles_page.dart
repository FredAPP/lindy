import 'package:flutter/material.dart';
import 'package:lindyapp/models/article_info.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Stack(
          children: [
            Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 213, 173, 1),
                  border: Border.all(
                    color: Color.fromRGBO(60, 65, 133, 1),
                    width: width * 0.015,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
