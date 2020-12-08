import 'package:flutter/material.dart';

class CardVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.09,
            height: MediaQuery.of(context).size.height * 0.009,
          ),
          Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.30,
                  color: Colors.blue[600],
                ),
                ListTile(
                  title: Text(
                    'Video Title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.album),
                  trailing: Icon(Icons.table_chart),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
