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
