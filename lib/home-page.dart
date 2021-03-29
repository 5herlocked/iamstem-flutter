import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("Home Page: News and Events go here"),
      ),
    );
  }

  Widget _makeAppBar() {
    return AppBar(
      title: Text("Current Events"),
    );
  }
}