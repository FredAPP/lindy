import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lindyapp/pages/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// TODO Pedro montar firebase
// TODO montar tela profile (Card com info pessoais: Foto, nome/username, mudar foto)
// TODO Montar página dos passos (moves)
// TODO Ter três artigos