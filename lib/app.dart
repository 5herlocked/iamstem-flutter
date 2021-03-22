import 'package:flutter/material.dart';
import 'data/user.dart';
import 'home-page.dart';

class App extends StatefulWidget {
  App({Key key, this.user}) : super(key: key);

  final User user;

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                }
            ),
            ListTile(
                leading: Icon(Icons.group),
                title: Text('About Us'),
                onTap: () {
                  // change page to about us, then close drawer

                  Navigator.pop(context);
                }
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
      body: HomePage(),
    );
  }
}
