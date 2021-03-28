import 'package:flutter/material.dart';

import 'package:i_am_stem/about_us_page/about-us.dart';
import 'package:i_am_stem/camp_page/connect-camp.dart';
import 'package:i_am_stem/connect_page/connect-social.dart';
import 'package:i_am_stem/donate_page/donate.dart';
import 'package:i_am_stem/game_page/games.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Make User Profile'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.rss_feed),
              title: Text('Connect'),
              onTap: () {
                // change page to connect page, then close drawer
                setDestination(Destinations.connect);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Donate'),
              onTap: () {
                // change page to donate page, then close drawer
                setDestination(Destinations.donate);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_library),
              title: Text('Resources'),
              onTap: () {
                // change page to resources page, then close drawer
                setDestination(Destinations.resources);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact Us'),
              onTap: () {
                // change page to contact us, then close drawer
                setDestination(Destinations.contact_us);
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.games),
                title: Text('Games'),
                onTap: () {
                  // change page to List<Games>, then close drawer
                  setDestination(Destinations.games);
                  Navigator.pop(context);
                },
            ),
            ListTile(
              leading: Icon(Icons.landscape),
              title: Text('Camp'),
              onTap: () {
                // change page to Camp, then close drawer
                setDestination(Destinations.camp);
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.group),
                title: Text('About Us'),
                onTap: () {
                  // change page to about us, then close drawer
                  setDestination(Destinations.about_us);
                  Navigator.pop(context);
                },
            ),
            ListTile(
              leading: Icon(Icons.insert_link),
              title: Text('I AM STEM'),
              onTap: () {
                // change page to I AM STEM website, then close drawer
                setDestination(Destinations.website);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
          _currentBody = DonatePage();
          _currentAppBar = DonatePage.getAppBar();
          break;
        case Destinations.resources:
          _currentBody = Resources();
          _currentAppBar = DonatePage.getAppBar();
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
