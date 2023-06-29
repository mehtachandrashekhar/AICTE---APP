import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoadingIndicator extends StatefulWidget {
  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: HexColor("#FEF89C"),
      body: Center(
        child: Image.asset('assets/images/yellow_loader.gif'),
      ),
    ));
  }
}
