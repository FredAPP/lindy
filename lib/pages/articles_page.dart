import 'package:flutter/material.dart';
import 'package:telalogin/models/article_info.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lindy App'),
      ),
      body: _articles(articlesList),
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

Widget _articles(List articlesList) {
  return ListView.builder(
    itemCount: articlesList.length,
    itemBuilder: (BuildContext context, int index) => Card(
      child: ListTile(
        leading: articlesList[index].icon,
        title: Text(articlesList[index].title),
        subtitle: Text(articlesList[index].text),
      ),
    ),
  );
}
