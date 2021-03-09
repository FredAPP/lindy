import 'package:flutter/material.dart';
import 'package:lindyapp/pages/login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isPasswordObscured = true;
  bool isConfirmPasswordObscured = true;
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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 55,
                        left: 10,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                              color: Color.fromRGBO(60, 65, 133, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.3,
                    width: width * 0.3,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color.fromRGBO(60, 65, 133, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
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
                                  color: Color.fromRGBO(60, 65, 133, 0.6),
                                  fontSize: 16),
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
                            autocorrect: false,
                            enableSuggestions: false,
                            obscureText: isConfirmPasswordObscured,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isConfirmPasswordObscured
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: isConfirmPasswordObscured
                                      ? Colors.grey
                                      : Colors.deepPurple[700],
                                ),
                                onPressed: () {
                                  setState(() {
                                    isConfirmPasswordObscured =
                                        !isConfirmPasswordObscured;
                                  });
                                },
                              ),
                              border: InputBorder.none,
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(60, 65, 133, 0.6),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(60, 65, 133, 1),
                              borderRadius: BorderRadius.circular(20)),
                          width: width * 0.3,
                          // margin: EdgeInsets.symmetric(vertical: 20),
                          height: height * 0.05,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                            },
                            child: Text(
                              'Sign Up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 40,
                            right: 40,
                          ),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Text("Sign up with",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(60, 65, 133, 1),
                            )),
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
                                    image:
                                        AssetImage('assets/icons/google.png')),
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
                            TextButton(
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
          ],
        ),
      ),
    );
  }
}
