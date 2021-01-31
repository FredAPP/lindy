import 'package:flutter/material.dart';
import 'package:lindyapp/widgets/card_videos.dart';
import 'package:lindyapp/widgets/dropdown.dart';

class MovesPage extends StatelessWidget {
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
              decoration: BoxDecoration(
                color: Color.fromRGBO(232, 213, 173, 1),
                border: Border.all(
                  color: Color.fromRGBO(60, 65, 133, 1),
                  width: 10,
                ),
                // borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 55,
                          left: 20,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Videos!',
                            style: TextStyle(
                                color: Color.fromRGBO(60, 65, 133, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: DropdownMenu(),
                        height: 100,
                      ),
                      Container(
                        child: CardVideos(),
                        height: 7000,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
