import 'package:flutter/material.dart';
import 'package:telalogin/widgets/record.dart';

class CreditsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: Image(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.4,
                  0.8,
                ],
                colors: [
                  Color.fromRGBO(210, 193, 144, 0.8),
                  Color.fromRGBO(200, 173, 112, 0.3),
                ],
              ),
            ),
          ),
          Center(
            child: Column(children: [
              Center(
                child: Record(),
                heightFactor: height * 0.0025,
              ),
              Column(
                children: [
                  Text('Lindy App\n',
                      style: TextStyle(
                        color: Colors.deepPurple[700],
                        fontSize: 30,
                      )),
                  Text(
                    'By \n\n Freddie Penido \n Thomas Campos \n Wívio Lima',
                    style: TextStyle(
                      color: Colors.deepPurple[700],
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ]),
          )
        ],
      )),
    );
  }
}
