import 'package:flutter/material.dart';
import 'package:lindyapp/widgets/card_videos.dart';
import 'package:lindyapp/widgets/dropdown.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
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
                )
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(20)),
                    width: width * 0.6,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: height * 0.07,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DropdownMenu(),
                        ));
                      },
                      child: Text(
                        'Dropdown',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(20)),
                    width: width * 0.6,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: height * 0.07,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CardVideos(),
                        ));
                      },
                      child: Text(
                        'Video Cards',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
