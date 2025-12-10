import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double heightX = MediaQuery.of(context).size.height;
     double widthX = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff136a8a), Color(0xff57C785)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                shadowColor: Colors.black,
                elevation: 3,
                child: Container(
                 height:heightX*0.85,
                 width: widthX*0.4,
                 decoration: BoxDecoration(
                  color: Colors.white70,
                 // border: Border.all(width: 2 , color: Colors.white)
                 ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
