import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class Game extends StatefulWidget {
  static const String routeName = '/game';

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("This is where the Games go"),
      ),
    );
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("MiniGames"),
    );
  }
}