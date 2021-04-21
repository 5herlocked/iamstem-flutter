import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:i_am_stem/navigation-drawer.dart';



class AdvisoryBoard extends StatefulWidget {
  static const String routeName = '/advisory_board';


  _AdvisoryBoardState createState() => _AdvisoryBoardState();
}

class _AdvisoryBoardState extends State<AdvisoryBoard> {
  @override
  final String filler = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.person_pin),
                    title: Text('<Insert Name>'),
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
                    leading: Icon(Icons.person_pin),
                    title: Text('<Insert Name>'),
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
                    leading: Icon(Icons.person_pin),
                    title: Text('<Insert Name>'),
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
                    leading: Icon(Icons.person_pin),
                    title: Text('<Insert Name>'),
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
                    leading: Icon(Icons.person_pin),
                    title: Text('<Insert Name>'),
                    subtitle: Text(filler),
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
    title: Text("Advisory Board"),
  );
}