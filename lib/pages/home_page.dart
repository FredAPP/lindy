import 'package:flutter/material.dart';
import 'package:telalogin/pages/teste.dart';

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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Test(),
                    ));
                  },
                  child: Text('Para Teste'))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: 'Moves',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            label: 'Playlists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account_outlined),
            label: 'About us',
          ),
        ],
      ),
    );
  }
}
