import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lindyapp/pages/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
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
