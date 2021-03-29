import 'package:flutter/material.dart';

class ConnectSocial extends StatefulWidget {
  static const String routeName = '/social';


  _ConnectSocialState createState() => _ConnectSocialState();

  static Widget getAppBar() {
    return AppBar(
      title: Text("Social Media"),
    );
  }
}

class _ConnectSocialState extends State<ConnectSocial> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Social Media page, could have a live feed of all the I AM STEM socials"
          "along with links to drop a follow/subscribe, etc."),
    );
  }
}