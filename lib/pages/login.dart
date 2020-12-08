import 'package:flutter/material.dart';
import 'package:telalogin/pages/forgot.dart';
import 'package:telalogin/pages/signup.dart';
import 'package:telalogin/widgets/record.dart';
import '../widgets/navigation_controller.dart';

//https://assets.materialup.com/uploads/e6018e43-e21f-4917-a6a1-4de8451a86d6/preview.png

class LoginPage extends StatelessWidget {
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
              decoration: (BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4, 0.8],
                  colors: [
                    Color.fromRGBO(201, 193, 144, 1),
                    Color.fromRGBO(183, 173, 112, 1)
                  ],
                ),
              )),
              height: height,
              width: width,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Welcome, hoppers!',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                        height: height * 0.4,
                        width: width * 0.5,
                        child: Record()),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.only(left: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          width: width * 0.3,
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: height * 0.05,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => NavigationController(),
                              ));
                            },
                            child: Text(
                              'Sign In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        color: Colors.blue, fontSize: 14),
                                  ),
                                ),
                              ),
                              Text('or login with'),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue)),
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
    );
  }
}
