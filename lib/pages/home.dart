import 'package:flutter/material.dart';
import 'package:telalogin/widgets/card_videos.dart';
import 'package:telalogin/widgets/dropdown.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: NetworkImage(
                      'https://image.shutterstock.com/image-vector/vertical-composition-three-couples-people-600w-1460029985.jpg'),
                ),
              ),
              FlatButton(
                color: Colors.blue,
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
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CardVideos(),
                  ));
                },
                child: Text(
                  'card',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
