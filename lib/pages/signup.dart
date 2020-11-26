import 'package:flutter/material.dart';
import 'package:telalogin/pages/login.dart';

//https://assets.materialup.com/uploads/e6018e43-e21f-4917-a6a1-4de8451a86d6/preview.png

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: Text('Welcome',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Text('Sign Up',
                  style: TextStyle(fontSize: 30, color: Colors.blue)),
              Container(
                padding: EdgeInsets.only(left: 20),
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 26),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
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
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                  ),
                ],
              ),
              Text('or'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      child: Container(
                          width: 20,
                          child: Image(
                              image: AssetImage('assets/icons/facebook.png'))),
                      radius: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      child:
                          Image(image: AssetImage('assets/icons/google.png')),
                      radius: 42,
                      backgroundColor: Colors.grey[50],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Do You Have an Account?',
                      style: TextStyle(fontSize: 20)),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                    },
                    child: Text('Sign In',
                        style: TextStyle(fontSize: 20, color: Colors.blue)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
