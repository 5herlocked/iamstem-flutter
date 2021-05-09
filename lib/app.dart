import 'package:flutter/material.dart';
import 'package:i_am_stem/home-page.dart';

class App extends StatefulWidget {
  App({required Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // TODO: Figure out the new navigation system constraints

  // Here's the thing, App, for now, is just a container
  // We could use it to store user data that is global to the app
  // OR we could entirely remove App as a class thus using
  // Navigation Drawer as the Modal display unit and just having
  // User data being controlled by the Splash Screen and then
  // moving it around through the Profile as a user

  // But that is for a later date
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}