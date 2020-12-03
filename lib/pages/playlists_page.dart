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
    );
  }
}
