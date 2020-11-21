import 'package:flutter/material.dart';
import 'package:telalogin/screens/login.dart';

class ForgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Let\'s Get you',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                Text('Forgot',
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email or Username',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text(
                          'Reset',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Back to Login'),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.blue, fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 250,
                    )
                  ],
                ),
              ],
            )));
  }
}
