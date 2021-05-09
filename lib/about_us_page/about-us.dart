
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:i_am_stem/navigation-drawer.dart';
import 'package:i_am_stem/routes/routes.dart';

class AboutUs extends StatefulWidget {
  static const String routeName = '/about_us';


  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final String filler = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor';
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
        body: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            leading: Icon(Icons.build),
                            title: Text('Vision'),
                            subtitle: Text(filler),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            leading: Icon(Icons.campaign),
                            title: Text('Vision'),
                            subtitle: Text(filler),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            leading: Icon(Icons.description),
                            title: Text('Description'),
                            subtitle: Text(filler),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            leading: Icon(Icons.supervisor_account),
                            title: Text('Co-Organizers'),
                            subtitle: Text(filler),
                            onTap: () {
                              Navigator.pushReplacementNamed(context, Routes.coOrganizers);
                              // change page to Co-Organizers page, then close drawer
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            leading: Icon(Icons.emoji_people),
                            title: Text('Founder and Executive Director'),
                            subtitle: Text(filler),
                            onTap: () {
                              Navigator.pushReplacementNamed(context, Routes.founderExecutive);
                               // change page to F&ED page, then close drawer
                             },
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            leading: Icon(Icons.psychology),
                            title: Text('Advisory Board'),
                            subtitle: Text(filler),
                            onTap: () {
                              Navigator.pushReplacementNamed(context, Routes.advisoryBoard);
                               // change page to Co-Organizers page, then close drawer
                             },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("About Us"),
      );
    }
  }



