
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:i_am_stem/navigation-drawer.dart';

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
                              Navigator.pop(context);
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
                              Navigator.pop(context);
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
                              Navigator.pop(context);
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
      /*body: Center(
        child: Table(
          border: TableBorder.all(color: Color.fromARGB(20, 0, 0, 0)),
          children: <TableRow>[
            TableRow(
                children: <Widget>[
              Row(
                  children:[
                      Icon(Icons.build),
                      SizedBox(width: 20, height: screenHeight/6,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Vision',
                                style: Theme.of(context).textTheme.headline6,
                                ),
                            Text(
                                'BlalalalalalBlalalalalalBlalalalalalBlalalalalalBlalalalalalBlalalalalalBlalalalalal',
                                style: Theme.of(context).textTheme.subtitle1,
                                softWrap: true,
                            ),
                          ]
                        )
                      )
                    ]
                  ),
              ]
            ),
            TableRow(
                children: [
                  Row(
                      children:[
                        Icon(Icons.campaign),
                        SizedBox(width: 10, height: screenHeight/6,),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(''),
                                  Text(
                                    'Statement',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                      'Blalalalalal',
                                      style: Theme.of(context).textTheme.subtitle1
                                  ),
                                ]
                            )
                        )
                      ]
                  ),
                ]
            ),
            TableRow(
                children: [
                  Row(
                      children:[
                        Icon(Icons.description),
                        SizedBox(width: 20, height: screenHeight/6,),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(''),
                                  Text(
                                    'Description',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                      'Blalalalalal',
                                      style: Theme.of(context).textTheme.subtitle1
                                  ),
                                ]
                            )
                        )
                      ]
                  ),
                ]
            ),
            TableRow(
                children: [
                  TableCell(
                    child:
                  Row(
                      children:[
                        Icon(Icons.supervisor_account),
                        SizedBox(width: 20, height: screenHeight/6,),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(''),
                                  Text(
                                    'Co-Organizers',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                      'Blalalalalal',
                                      style: Theme.of(context).textTheme.subtitle1
                                  ),
                                ]
                            )
                        )
                      ]
                  ),
                  )
                ]
            ),
            TableRow(
                children: [
                  Row(
                      children:[
                        Icon(Icons.emoji_people),
                        SizedBox(width: 20, height: screenHeight/6,),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(''),
                                  Text(
                                    'Founder and Executive Director',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                      'Blalalalalal',
                                      style: Theme.of(context).textTheme.subtitle1
                                  ),
                                ]
                            )
                        )
                      ]
                  ),
                ]
            ),
            TableRow(
                children: [
                  Row(
                      children:[
                        Icon(Icons.psychology),
                        SizedBox(width: 20, height: screenHeight/6,),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(''),
                                  Text(
                                    'Advisory Board',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                      'Blalalalalal',
                                      style: Theme.of(context).textTheme.subtitle1
                                  ),
                                ]
                            )
                        )
                      ]
                  ),
                ]
            ),
          ],
        ),
      ),*/
    );
  }

  Widget _makeAppBar() {
    return AppBar(
      title: Text("About Us"),
      );
    }
  }



