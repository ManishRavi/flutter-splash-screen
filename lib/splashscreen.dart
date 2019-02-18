import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Home();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                child: Icon(
                  Icons.restaurant,
                  color: Colors.black,
                  size: 55.0,
                ),
                radius: 50.0,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              Text(
                "Welcome to the App",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
