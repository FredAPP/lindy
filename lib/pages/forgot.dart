import 'package:flutter/material.dart';
import 'package:lindyapp/pages/login.dart';

class ForgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[50],
          body: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    child: Image(
                      image: AssetImage("assets/images/background.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [
                          0.4,
                          0.8,
                        ],
                        colors: [
                          Color.fromRGBO(210, 193, 144, 0.8),
                          Color.fromRGBO(200, 173, 112, 0.3),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Let\'s Get you',
                            style: TextStyle(
                                color: Colors.deepPurple[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Forgot',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.deepPurple[700],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                'Type your email to recover your password',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[700],
                                borderRadius: BorderRadius.circular(20)),
                            width: width * 0.3,
                            // margin: EdgeInsets.symmetric(vertical: 20),
                            height: height * 0.05,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                              },
                              child: Text(
                                'Recover',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: height * 0.35,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
                                },
                                child: Text(
                                  'Back to Login',
                                  style: TextStyle(
                                      color: Colors.deepPurple[700],
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
