import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohammed Abualnasr App',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, this.title = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
          this.title,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          )
          ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  r'https://www.goarabic.com/vm/wp-content/uploads/2019/05/dummy-profile-pic.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email Adress', 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.red,
                      Colors.redAccent,
                    ]
                    ),
                    ),
                child: TextButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => print('object'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: RichText(
                  text: TextSpan(
                      text: "Don't Have an Account!, ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                          )
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
