import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class ConnectCamp extends StatefulWidget {
  static const String routeName = '/connect_camp';
  
  @override
  _ConnectCampState createState() => _ConnectCampState();
}

class _ConnectCampState extends State<ConnectCamp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("Connect Camp"),
      ),
    );
  }

  Widget _makeAppBar() {
    return AppBar(
      title: Text("Camp"),
    );
  }
}