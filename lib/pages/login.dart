import 'package:flutter/material.dart';
import 'package:lindyapp/my_flutter_app_icons.dart';
import 'package:lindyapp/pages/forgot.dart';
import 'package:lindyapp/pages/signup.dart';
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
                  width: width * 0.015,
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
                        horizontal: width * 0.05,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.08,
                              left: width * 0.02,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
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
                                  width: width * 0.13,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                  width: width * 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
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
                            padding: EdgeInsets.only(left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(60, 65, 133, 0.5),
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
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
                                        ? Color.fromRGBO(60, 65, 133, 0.5)
                                        : Color.fromRGBO(60, 65, 133, 1),
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
                                    color: Color.fromRGBO(60, 65, 133, 0.5),
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(60, 65, 133, 1),
                                    borderRadius: BorderRadius.circular(20)),
                                width: width * 0.3,
                                margin: EdgeInsets.only(top: 10),
                                height: height * 0.06,
                                child: TextButton(
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
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.05),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      ForgotPage(),
                                                ));
                                              },
                                              child: Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        60, 65, 133, 1),
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: height * 0.015),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignupPage(),
                                                ));
                                              },
                                              child: Text(
                                                'Sign Up',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        60, 65, 133, 1),
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      width: width * 0.3,
                                      color: Color.fromRGBO(60, 65, 133, 1),
                                    ),
                                    Text('\n or login with',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                60, 65, 133, 1))),
                                    SizedBox(
                                      width: width * 0.2,
                                      height: height * 0.005,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            MyFlutterApp.facebook_square,
                                            color:
                                                Color.fromRGBO(60, 65, 133, 1),
                                          ),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            MyFlutterApp.google,
                                            color:
                                                Color.fromRGBO(60, 65, 133, 1),
                                          ),
                                          onPressed: () {},
                                        )
                                        // GestureDetector(
                                        //   onTap: () {},
                                        //   child: CircleAvatar(
                                        //     radius: 14,
                                        //     backgroundColor: Colors.grey[50],
                                        //     child: Image(
                                        //         image: AssetImage(
                                        //             'assets/icons/google.png')),
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
