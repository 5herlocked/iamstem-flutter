import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class ConnectSocial extends StatefulWidget {
  static const String routeName = '/social';


  _ConnectSocialState createState() => _ConnectSocialState();
}

class _ConnectSocialState extends State<ConnectSocial> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("Social Media page, could have a live feed of all the I AM STEM socials"
            "along with links to drop a follow/subscribe, etc."),
      ),
    );
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("Social Media"),
    );
  }
}