import 'package:flutter/material.dart';
import 'package:telalogin/widgets/articles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LindyApp'),
      ),
      body: Articles(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('1')),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('1')),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('1')),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('1')),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('1')),
        ],
      ),
    );
  }
}
