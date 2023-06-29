import 'package:flutter/material.dart';

import 'models/SplashScreen.dart';

void main() {
  runApp(AICTE());
}

class AICTE extends StatefulWidget {
  @override
  State<AICTE> createState() => _AICTEState();
}

class _AICTEState extends State<AICTE> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
