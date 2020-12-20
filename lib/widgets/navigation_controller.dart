import 'package:flutter/material.dart';
import 'package:telalogin/pages/credits_page.dart';
import 'package:telalogin/pages/events_page.dart';
import 'package:telalogin/pages/home.dart';
import 'package:telalogin/pages/moves_page.dart';
import 'package:telalogin/pages/playlists_page.dart';

class NavigationController extends StatefulWidget {
  @override
  _NavigationControllerState createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {
  int _currentIndex = 0;

  List<Object> paginas = [
    Home(),
    MovesPage(),
    PlaylistsPage(),
    EventsPage(),
    CreditsPage(),
  ];
  void tapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: paginas[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: tapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
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
            icon: Icon(Icons.supervisor_account),
            label: 'About us',
          ),
        ],
      ),
    );
  }
}
