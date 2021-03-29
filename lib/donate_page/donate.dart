import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class Donate extends StatefulWidget {
  static const String routeName = '/donate';

  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("Donate Page"),
      ),
    );
  }

  Widget _makeAppBar() {
    return AppBar(
      title: Text("Donate"),
    );
  }
}