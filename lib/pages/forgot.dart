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
              Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(232, 213, 173, 1),
                    border: Border.all(
                      color: Color.fromRGBO(60, 65, 133, 1),
                      width: width * 0.015,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: height * 0.09,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Let\'s get you back!',
                            style: TextStyle(
                                color: Color.fromRGBO(60, 65, 133, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(60, 65, 133, 1),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.8,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                  color: Color.fromRGBO(60, 65, 133, 1),
                                  width: 1,
                                ),
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.only(left: width * 0.025),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                'Type your email to recover your password',
                            hintStyle:
                                TextStyle(color: Color.fromRGBO(60, 65, 133, 0.6), fontSize: 16),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(60, 65, 133, 1),
                                borderRadius: BorderRadius.circular(20)),
                                width: width * 0.3,
                                margin: EdgeInsets.only(top: 10),
                                height: height * 0.06,
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
                                height: height * 0.25,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
                                },
                                child: Text(
                                  'Back to login',
                                  style: TextStyle(
                                      color: Colors.deepPurple[700],
                                      fontSize: 20),
                                ),
                              ),
                              //Colocar o botão de voltar abaixo do Back to login
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
