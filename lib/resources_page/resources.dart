import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class Resources extends StatefulWidget {
  static const String routeName = '/resources';

  @override
  _ResourcesPageState createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("Resources Page: will contain 3 large cards that redirect to FAQ,"
            "Get Involved and Individual Resources (This last one can be connected"
            "to the profile)"),
      ),
    );
  }

  Widget _makeAppBar() {
    return AppBar(
      title: Text("Resources"),
    );
  }

}