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
            child: Row(children: [
              Icon(Icons.music_note),
              Text('Musics'),
            ]),
          ),
          // Card(
          //   child: Row(
          //     Icon(Icons.movie_filter),
          //     Text('Performances'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
