import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:i_am_stem/data/event.dart';
import 'package:i_am_stem/navigation-drawer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'decorations.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  LinkedHashMap<DateTime, List<Event>>? _eventList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Stack(
        children: <Widget>[
          TableCalendar(
            focusedDay: _focusedDay,
            // TODO: Change date limits as necessary
            // by default shows events from a week ago
            firstDay: _focusedDay.subtract(Duration(days: 7)),
            // at most shows events from a month later
            lastDay: _focusedDay.add(Duration(days: 31)),
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onPageChanged: (focusedDay) => _focusedDay = focusedDay,
          ),
          Spacer(
            flex: 5,
          ),
          ListView.builder(
            itemCount: _eventList?.length,
            itemBuilder: _getEventsForFocusedDay,
          ),
        ],
      ),
    );
  }

  List<Event> _getEventList() {
    // TODO: Call method in Event which fetches all the data
    return <Event>[];
  }

  List<Event>? _getEventsForDay(DateTime day) {
    return _eventList![day];
  }

  Widget _getEventsForFocusedDay(BuildContext context, int index) {
    return Card(
      child: Center(
        child: Text(
          "${_eventList![_focusedDay]![index].name}",
          style: Decorations.cardText,
        ),
      ),
    );
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("Current Events"),
    );
  }

  void _daySelected(DateTime selectedDay, DateTime focusedDay) {}
}
