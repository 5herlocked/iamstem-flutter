import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Donate'),
              onTap: () {
                // change page to donate page, then close drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_library),
              title: Text('Resources'),
              onTap: () {
                // change page to resources page, then close drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact Us'),
              onTap: () {
                // change page to contact us, then close drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.games),
                title: Text('Games'),
                onTap: () {
                  // change page to List<Games>, then close drawer
                  Navigator.pop(context);
                },
            ),
            ListTile(
              leading: Icon(Icons.landscape),
              title: Text('Camp'),
              onTap: () {
                // change page to Camp, then close drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.group),
                title: Text('About Us'),
                onTap: () {
                  // change page to about us, then close drawer
                  Navigator.pop(context);
                },
            ),
            ListTile(
              leading: Icon(Icons.insert_link),
              title: Text('I AM STEM'),
              onTap: () {
                // change page to I AM STEM website, then close drawer
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
          // TODO: Handle this case.
          break;
        case Destinations.donate:
          // TODO: Handle this case.
          break;
        case Destinations.resources:
          // TODO: Handle this case.
          break;
        case Destinations.contact_us:
          // TODO: Handle this case.
          break;
        case Destinations.games:
          // TODO: Handle this case.
          break;
        case Destinations.camp:
          // TODO: Handle this case.
          break;
        case Destinations.about_us:
          // TODO: Handle this case.
          break;
        case Destinations.website:
          // TODO: Handle this case.
          break;
      }
    });
  }

  Widget createAppBar() {
    return AppBar();
  }
}
