import 'package:flutter/material.dart';

import '../widgets/dropdown.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lindy App'),
      ),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Articles'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            title: Text('Moves'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            title: Text('Playlists'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('About us'),
          ),
        ],
      ),
    );
  }
}
