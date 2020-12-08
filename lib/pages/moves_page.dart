import 'package:flutter/material.dart';

class MovesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // player youtube

          Card(
            child: ListTile(
              leading: Icon(Icons.book), //thumbnail youtube videos
              title: Text('Swing Music'),
              subtitle: Text(
                  'Swing music is a form of jazz that developed in the United States in the 1930s and 1940s. The name came from the emphasis on the off–beat, or weaker pulse. Swing bands usually featured soloists who would improvise on the melody over the arrangement...'),
            ),
          )
        ],
      ),
    );
  }
}
