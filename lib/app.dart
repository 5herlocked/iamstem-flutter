import 'package:flutter/material.dart';

import 'package:i_am_stem/about_us_page/about-us.dart';
import 'package:i_am_stem/camp_page/connect-camp.dart';
import 'package:i_am_stem/connect_page/connect-social.dart';
import 'package:i_am_stem/donate_page/donate.dart';
import 'package:i_am_stem/game_page/games.dart';
import 'package:i_am_stem/navigation-drawer.dart';
import 'package:i_am_stem/resources_page/resources.dart';
import 'package:i_am_stem/home-page.dart';

enum Destinations {
  connect,
  donate,
  resources,
  contact_us,
  games,
  camp,
  about_us,
  website,
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Widget _currentBody;
  Widget _currentAppBar;

  @override
  void initState() {
    super.initState();
    _currentBody = HomePage();
    _currentAppBar = HomePage.getAppBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentAppBar,
      drawer: NavigationDrawer(),
      body: _currentBody,
    );
  }

  void setDestination(Destinations toSet) {
    setState(() {
      switch (toSet) {
        case Destinations.connect:
          _currentBody = ConnectSocial();
          _currentAppBar = ConnectSocial.getAppBar();
          break;
        case Destinations.donate:
          _currentBody = Donate();
          _currentAppBar = Donate.getAppBar();
          break;
        case Destinations.resources:
          _currentBody = Resources();
          _currentAppBar = Donate.getAppBar();
          break;
        case Destinations.contact_us:
          // TODO: Handle this case
          break;
        case Destinations.games:
          _currentBody = Game();
          _currentAppBar = Game.getAppBar();
          break;
        case Destinations.camp:
          _currentBody = ConnectCamp();
          _currentAppBar = ConnectCamp.getAppBar();
          break;
        case Destinations.about_us:
          _currentBody = AboutUs();
          _currentAppBar = AboutUs.getAppBar();
          break;
        case Destinations.website:
          // TODO: Handle this case.
          break;
      }
    });
  }
}
