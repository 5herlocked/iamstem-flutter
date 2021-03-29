import 'package:i_am_stem/about_us_page/about-us.dart';
import 'package:i_am_stem/camp_page/connect-camp.dart';
import 'package:i_am_stem/connect_page/connect-social.dart';
import 'package:i_am_stem/routes/routes.dart';

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
      initialRoute: '/',
      theme: ThemeData(
        brightness: Brightness.light,
        hintColor: Color(0xFFc6c6c6),
        primaryColor: Color(0xFFFA716F),
        canvasColor: Colors.white,
      ),
      routes: {
        Routes.aboutUs: (context) => AboutUs(),
        Routes.camp: (context) => ConnectCamp(),
        Routes.connectSocial: (context) => ConnectSocial(),
      },
      home: SplashScreen(),
    );
  }
}