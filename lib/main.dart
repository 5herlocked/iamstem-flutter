import 'app.dart';
import 'splash-screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I AM STEM',
      theme: ThemeData(
        brightness: Brightness.light,
        hintColor: Color(0xFFc6c6c6),
        primaryColor: Color(0xFFFA716F),
        canvasColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}