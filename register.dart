import 'package:flutter/material.dart';
import 'package:workshop_1/main.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register your self'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter your Name"),
                  prefixIcon: Icon(Icons.person, color: Colors.blue),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: new BorderSide(color: Colors.teal)),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter your E-Mail"),
                  prefixIcon: Icon(Icons.email, color: Colors.blue),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: new BorderSide(color: Colors.teal)),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Enter your Password"),
                  prefixIcon: Icon(Icons.password, color: Colors.blue),
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Re-enter your password"),
                  prefixIcon: Icon(Icons.password, color: Colors.blue),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: new BorderSide(color: Colors.teal)),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Center(
                      child: Text(
                    'Register',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  print('button clicked');
                  Navigator.of(context).pop(MaterialPageRoute(
                      builder: (BuildContext context) => new ninjacard()));
                },
                child: Container(
                  // width: 150,
                  // height: 60,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 187, 164, 94),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text("Already have an account ? login",
                        style: TextStyle(fontSize: 18, color: Colors.blue)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
