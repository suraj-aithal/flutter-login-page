import 'package:flutter/material.dart';
// import 'package:workshop_1/login.dart';
import 'package:workshop_1/register.dart';

void main() => runApp(MaterialApp(
      home: ninjacard(),
      debugShowCheckedModeBanner: false,
    ));

class ninjacard extends StatefulWidget {
  const ninjacard({super.key});

  @override
  State<ninjacard> createState() => _ninjacardState();
}

class _ninjacardState extends State<ninjacard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('My Application'),
        backgroundColor: Colors.blue,
        // centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Login Page',
                  style: TextStyle(fontSize: 42),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter user name"),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: new BorderSide(color: Colors.teal)),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text(
                    "Enter password",
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.blue,
                  ),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: new BorderSide(color: Colors.teal)),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  print('button clicked');
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => new loginpage()));
                },
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text("login",
                        style: TextStyle(fontSize: 28, color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('button clicked');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => new Register()));
                },
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 187, 164, 94),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text("register",
                        style: TextStyle(fontSize: 18, color: Colors.blue)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text('OR'),
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 100),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png'),
                      // radius: 40.0,
                    ),
                    SizedBox(width: 25),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/1200px-Facebook_f_logo_%282021%29.svg.png'),
                      // radius: 40.0,
                    ),
                    SizedBox(width: 25),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.datafeedwatch.com/hubfs/DFW/alexander-shatov-k1xf2D7jWUs-unsplash%20%281%29.jpg'),
                      // radius: 40.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
