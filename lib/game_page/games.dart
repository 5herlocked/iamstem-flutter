import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  static const String routeName = '/game';

  @override
  _GamePageState createState() => _GamePageState();

  static Widget getAppBar() {
    return AppBar(
      title: Text("MiniGames"),
    );
  }
}

class _GamePageState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Game Page"),
    );
  }
}