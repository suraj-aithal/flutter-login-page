import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter User Name",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: TextFormField(
                decoration: InputDecoration(hintText: "password"),
              ),
            ),
            Container(),
          ],
        ));
  }
}
