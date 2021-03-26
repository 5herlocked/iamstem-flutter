import 'package:flutter/material.dart';

import 'decorations.dart';
import 'dart:async';

import 'app.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    _convertAsyncToNot();
      return Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: Decorations.backgroundGradient,
          ),
          child: Center(
            child: Text(
              "I AM STEM",
              style: Decorations.splashScreen,
            ),
          ),
        ),
      );
  }

  void _convertAsyncToNot() async {
    await _attemptLogin();
  }

  // enter login logic here instead of the sleep method
  Future _attemptLogin () async {
    // replace this
    await Future.delayed(const Duration(seconds: 2),  () => "1");

    // enter the login validation conditions here
    if (true) {
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            settings: const RouteSettings(name: '/'),
            builder: (builder) => App(),
          )
      );
    }
  }
}