import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Pages/HomePage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: AnimatedSplashScreen(
          splash: Image.asset(
            "assets/images/aicte-logo.png",
          ),
          nextScreen: HomePage(),
          //for image size
          splashIconSize: 250,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: HexColor("#FCED9F"),
          duration: 3000,
        ),
      ),
    );
  }
}

