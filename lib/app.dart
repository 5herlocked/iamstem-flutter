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

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}