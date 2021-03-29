import 'package:flutter/material.dart';
import 'package:i_am_stem/routes/routes.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.pop(context);
              // change page to connect page, then close drawer
              Navigator.pushReplacementNamed(context, Routes.connectSocial);
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Donate'),
            onTap: () {
              Navigator.pop(context);
              // change page to donate page, then close drawer
              
            },
          ),
          ListTile(
            leading: Icon(Icons.local_library),
            title: Text('Resources'),
            onTap: () {
              Navigator.pop(context);
              // change page to resources page, then close drawer
              
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
              // change page to contact us, then close drawer
              
            },
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Games'),
            onTap: () {
              Navigator.pop(context);
              // change page to List<Games>, then close drawer
              
            },
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text('Camp'),
            onTap: () {
              Navigator.pop(context);
              // change page to Camp, then close drawer
              
            },
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('About Us'),
            onTap: () {
              Navigator.pop(context);
              // change page to about us, then close drawer
              
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_link),
            title: Text('I AM STEM'),
            onTap: () {
              Navigator.pop(context);
              // change page to I AM STEM website, then close drawer
              
            },
          ),
        ],
      ),
    );
  }
}