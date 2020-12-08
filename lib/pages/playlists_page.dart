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
