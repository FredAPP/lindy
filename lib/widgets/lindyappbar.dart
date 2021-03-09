import 'package:flutter/material.dart';

class LindyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(232, 213, 173, 1),
        border: Border(
          top: BorderSide(
              width: width * 0.025, color: Color.fromRGBO(60, 65, 133, 1)),
          left: BorderSide(
              width: width * 0.025, color: Color.fromRGBO(60, 65, 133, 1)),
          right: BorderSide(
              width: width * 0.025, color: Color.fromRGBO(60, 65, 133, 1)),
        ),
      ),
      child: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Color.fromRGBO(60, 65, 133, 1),
          size: 26,
        ),
        backgroundColor: Color.fromRGBO(232, 213, 173, 1),
        title: Text(
          "Lindy App",
          style: TextStyle(
              letterSpacing: 2,
              fontStyle: FontStyle.italic,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(60, 65, 133, 1)),
        ),
        centerTitle: true,
      ),
    );
  }
}
