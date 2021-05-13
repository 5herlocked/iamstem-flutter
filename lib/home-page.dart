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
  List<Event>? _eventList;
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
              lastDay: _focusedDay.add(Duration(days: 31))
          ),
          Spacer(
            flex: 5,
          ),
          ListView.builder(
            itemCount: _eventList?.length,
            itemBuilder: _generateListEvents,
          ),
        ],
      ),
    );
  }

  Widget _generateListEvents(BuildContext context, int index) {
    // TODO: Fill _generateListEvents from DataStore
    UnimplementedError("Please implement _generateListEvents");
    return Card(
      child: Center(
        child: Text(
          "${_eventList![index].name}",
          style: Decorations.cardText,
        ),
      ),
    );
  }

  List<Event> _getEventsForDay(DateTime day) {
    // TODO: Fill _getEventsForDay from DataStore
    UnimplementedError("Please implement _getEventsForDay");
    return [];
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("Current Events"),
    );
  }
}