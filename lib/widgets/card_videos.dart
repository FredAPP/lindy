import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class CardVideos extends StatelessWidget {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(232, 213, 173, 1),
          // border: Border.all(
          //   color: Color.fromRGBO(60, 65, 133, 1),
          //   width: 10,
        ),
        // borderRadius: BorderRadius.all(Radius.circular(5)),

        child: Column(
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
                    child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
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
      ),
    );
  }
}
