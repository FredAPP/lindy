import 'package:flutter/material.dart';
import 'package:telalogin/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //CHUPA DEBUG
      home: LoginPage(),
    );
  }
}
