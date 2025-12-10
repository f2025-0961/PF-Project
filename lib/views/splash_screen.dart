import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pf_project/views/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  void navigate() async {
    await Future.delayed(Duration(seconds: 6));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff136a8a), Color(0xff57C785)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/logo.png"),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(135),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Secure Vault",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Your Trusted Digital Vault",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(55),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText(
                          "Powered by",
                          duration: Duration(milliseconds: 8500),
                          textStyle: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "AJK IT Solutions",
                          textStyle: TextStyle(fontWeight: FontWeight.w700),
                          speed: Duration(milliseconds: 300),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: Duration(milliseconds: 150),
                    ),
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
