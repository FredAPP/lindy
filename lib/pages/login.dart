import 'package:flutter/material.dart';
import 'package:telalogin/pages/forgot.dart';
import 'package:telalogin/pages/signup.dart';
import '../widgets/navigation_controller.dart';

//https://assets.materialup.com/uploads/e6018e43-e21f-4917-a6a1-4de8451a86d6/preview.png

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordObscured = true;
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
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(232, 213, 173, 1),
                border: Border.all(
                  color: Color.fromRGBO(60, 65, 133, 1),
                  width: 10,
                ),
                // borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 55,
                              left: 10,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                /*to odiando como esse texto ta mas n consegui deixar mais bonito*/
                                'Welcome to Lindy App!',
                                style: TextStyle(
                                    color: Color.fromRGBO(60, 65, 133, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(40),
                            child: Container(
                              height: width * 0.4,
                              width: width * 0.4,
                              // color: Colors.black,
                              foregroundDecoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 57,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 100,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color.fromRGBO(60, 65, 133, 1),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.only(left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(60, 65, 133, 0.6),
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color.fromRGBO(60, 65, 133, 1),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.only(left: 20),
                            child: TextField(
                              autocorrect: false,
                              enableSuggestions: false,
                              obscureText: isPasswordObscured,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    isPasswordObscured
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: isPasswordObscured
                                        ? Colors.grey
                                        : Colors.deepPurple[700],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordObscured = !isPasswordObscured;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(60, 65, 133, 0.6),
                                    fontSize: 16),
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
                                margin: EdgeInsets.symmetric(vertical: 20),
                                height: height * 0.05,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          NavigationController(),
                                    ));
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.05),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: FlatButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) => ForgotPage(),
                                          ));
                                        },
                                        child: Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                              color: Colors.deepPurple[700],
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                    Text('or login with'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: CircleAvatar(
                                            radius: 14,
                                            child: Container(
                                                width: 10,
                                                child: Image(
                                                    fit: BoxFit.fitWidth,
                                                    image: AssetImage(
                                                        'assets/icons/facebook.png'))),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: CircleAvatar(
                                            radius: 14,
                                            backgroundColor: Colors.grey[50],
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/icons/google.png')),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Don\'t Have Account?',
                                  style: TextStyle(fontSize: 20)),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ));
                                },
                                child: Text('Sign Up',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepPurple[700])),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
