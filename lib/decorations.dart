import 'package:flutter/material.dart';

class Decorations {
  // colors
  static var accentColour = Color(0xFFFA716F);

  // text styles
  static var splashScreen = TextStyle(
    fontSize: 26,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static var headline = TextStyle(
    fontFamily: "Raleway",
    fontWeight: FontWeight.w900,
    fontSize: 20,
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
    fontFamily: 'Raleway',
    fontSize: 15,
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

  static var searchBar = InputDecoration(
      prefixIcon: new Icon(Icons.search, color: Colors.white,),
      hintText: 'Enter Name or Email',
      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      )
  );

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

  static InputDecoration createInputDecoration(IconData prefixIcon, String label) {
    return InputDecoration(
      prefixIcon: prefixIcon != null? Icon(prefixIcon): Icon(null),
      fillColor: Colors.white,
      filled: true,
      labelText: "$label",
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Decorations.accentColour,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}