import 'package:flutter/material.dart';
import 'package:i_am_stem/login_page/login_page.dart';

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
            child: Image(
              image: AssetImage('assets/ias_logo.png'),
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
            builder: (builder) => LoginPage(),
          )
      );
    }
  }
}