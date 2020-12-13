import 'package:flutter/material.dart';
import 'package:telalogin/pages/login.dart';

//https://assets.materialup.com/uploads/e6018e43-e21f-4917-a6a1-4de8451a86d6/preview.png

class SignupPage extends StatelessWidget {
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
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background.jpeg"),
                    )),
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
                ),
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
                    child: Text('Welcome!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[700],
                        )),
                  ),
                  SizedBox(
                    height: width * 0.2,
                    width: width * 0.2,
                  ),
                  Text(
                    'Sign Up',
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
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
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
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
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
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ),
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
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Text('or'),
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
                                  image:
                                      AssetImage('assets/icons/facebook.png'))),
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
                              image: AssetImage('assets/icons/google.png')),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Do You Have an Account?',
                        style: TextStyle(fontSize: 20),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple[700],
                          ),
                        ),
                      ),
                    ],
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
