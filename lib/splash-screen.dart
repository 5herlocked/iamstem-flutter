import 'package:flutter/material.dart';
import 'decorations.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
      return Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: Decorations.backgroundGradient,
          ),
          child: Center(
            child: Text(
              "I AM STEM",
              style: Decorations.splashScreen,
            )
          )
        )
      );
  }
}