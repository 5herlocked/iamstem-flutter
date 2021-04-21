import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Stack(
        children: <Widget>[

        ],
      ),
    );
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("Current Events"),
    );
  }
}