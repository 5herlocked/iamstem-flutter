import 'package:flutter/material.dart';

class ConnectCamp extends StatefulWidget {

  @override
  _ConnectCampState createState() => _ConnectCampState();

  static Widget getAppBar() {
    return AppBar(
      title: Text("Connect Camp"),
    );
  }
}

class _ConnectCampState extends State<ConnectCamp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text("Connect Camp Page"),
    );
  }

}