import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  static const String routeName = '/donate';

  @override
  _DonateState createState() => _DonateState();

  static Widget getAppBar() {
    return AppBar(
      title: Text("Donate"),
    );
  }
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Donate Page"),
    );
  }
}