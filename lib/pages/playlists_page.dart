import 'package:flutter/material.dart';

class PlaylistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lindy App'),  
      ),
      
      body: Row(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Musics'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.movie_filter),
              title: Text('Performances'),
            ),
          ),
        ],
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
