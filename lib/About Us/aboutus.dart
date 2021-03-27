
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import '../app.dart';
import '../splash-screen.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();

}
class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
  return Material(
    child: Container(
      child: GridView.count(
      crossAxisCount: 1,
      padding: EdgeInsets.symmetric(vertical: 50),
        children: List.generate(
      options.length,
      (index) => GridOptions(
    layout: options[index],
  )
      )
    )
  )
  );
  }


}
class GridLayout {
  final String title;
  final IconData icon;
  final String text;
  static const String _title = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor';
  GridLayout({this.icon, this.title, this.text});
}
List<GridLayout> options = [
  GridLayout(icon: Icons.build, title: ' Vision', text:'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
  GridLayout(icon: Icons.campaign, title: ' Statement', text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
  GridLayout(icon: Icons.description, title: ' Description', text:'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
  GridLayout(icon: Icons.supervisor_account, title: ' Co-Organizers', text:'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
  GridLayout(icon: Icons.emoji_people, title: ' Founder and Executive Director', text:'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
  GridLayout(icon: Icons.psychology, title: ' Advisory Board', text:'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
];
class GridOptions extends StatelessWidget {
  final GridLayout layout;
  GridOptions({this.layout});
  Widget build(BuildContext context) {
      return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon (
                layout.icon,
                size: 24,
              ),
              Text(
                  layout.title,

                  style: TextStyle(
                    fontSize: 24,
                  )
              ),
              Text(
                  layout.text,

                  style: TextStyle (
                    fontSize: 18,
                  )

              )
            ],
          ),
        );

      }

   }
