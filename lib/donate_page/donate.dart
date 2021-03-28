import 'package:flutter/material.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();

  static Widget getAppBar() {
    return AppBar(
      title: Text("Donate"),
    );
  }
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Donate Page"),
    );
  }
}