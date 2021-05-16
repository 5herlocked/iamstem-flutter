import 'package:flutter/material.dart';

// Credit: A Lot of these decorations were picked originally
// by Avneet Sethi for Mobile Application Development in
// Spring 2020

// But the best part (compiling them all in one place)
// was my own idea (Shardul Vaidya). This allows the entire
// app to change look and colours schemes by editing a single file

// TODO: Change decorations as necessary
class Decorations {
  // colors
  static var accentColour = Color(0xFFFA716F);

  static var buttonColor = Color(0xFFFA726F);

  // text styles
  static var splashScreen = TextStyle(
    fontSize: 26,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static var cardText = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static var headline = TextStyle(
    fontSize: 20,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w900,
    color: Colors.white.withOpacity(1.0),
  );

  static var subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: "Raleway",
    color: Colors.white.withOpacity(1.0),
  );

  static var profileUserName = TextStyle(
    fontSize: 20,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );

  static var radioButtonLabel = TextStyle(
    fontSize: 16,
    fontFamily: 'Raleway',
    color: Colors.black,
  );

  static var snackBar = TextStyle(
    fontSize: 15,
    fontFamily: 'Raleway',
  );

  static var welcomeBack = TextStyle(
    fontSize: 30,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w900,
    color: Colors.black87,
  );

  static var logIn = TextStyle(
    fontSize: 15,
    fontFamily: 'Raleway',
    fontStyle: FontStyle.italic,
    color: Colors.grey,
  );

  static var radioButton = TextStyle(
    fontSize: 16,
    fontFamily: 'Raleway',
    color: Colors.black,
  );

  // static var searchBar = InputDecoration(
  //     prefixIcon: new Icon(Icons.search, color: Colors.white,),
  //     hintText: 'Enter Name or Email',
  //     hintStyle: TextStyle(color: Colors.white, fontSize: 18),
  //     enabledBorder: UnderlineInputBorder(
  //       borderSide: BorderSide(color: Colors.white),
  //     )
  // );

  // gradients
  static var backgroundGradient = LinearGradient(
      colors: [
        Color(0xFFFA716F),
        Color(0xFFFEA969)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0.25,
        0.75,
      ]
  );
}