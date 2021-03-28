import 'package:flutter/material.dart';

class Resources extends StatefulWidget {

  @override
  _ResourcesPageState createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Resources Page: will contain 3 large cards that redirect to FAQ,"
          "Get Involved and Individual Resources (This last one can be connected"
          "to the profile)"),
    );
  }

}