import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:i_am_stem/navigation-drawer.dart';

class FounderExecutive extends StatefulWidget {
  static const String routeName = '/founder-executive';


  _FounderExecutiveState createState() => _FounderExecutiveState();
}

class _FounderExecutiveState extends State<FounderExecutive> {
  @override
  final String filler = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor';
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: _makeAppBar(),
        drawer: NavigationDrawer(),
        body: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        Expanded(
        child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new ListTile(
              leading: Icon(Icons.person_pin),
              trailing: Icon(Icons.person_pin),
              title: Text(
                  '<Insert Name>',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline4

              ),
              subtitle: Text(
                  filler,
                  textAlign: TextAlign.justify,
                      ),
                   )
                ],
              ),
             ),
          ),
        ]
      )
    );
  }
}

PreferredSizeWidget _makeAppBar() {
  return AppBar(
    title: Text("Executive Director"),
  );
}