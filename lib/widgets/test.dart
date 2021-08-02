import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_list_app/widgets/calendar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Tab1 extends StatefulWidget {
  const Tab1();

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  String filterType = 'today';
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  centerTitle: true,
                  backgroundColor: Color(0xFFF96060),
                  elevation: 0,
                  title: Text(
                    'Work List',
                    style: TextStyle(fontFamily: 'f1', fontSize: 30),
                  ),
                  actions: [
                    IconButton(
                        onPressed: onPressed,
                        icon: Icon(Icons.short_text),
                        color: Colors.white,
                        iconSize: 30)
                  ],
                ),
                Container(
                  height: 70,
                  color: Color(0xFFF96060),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              changeFilter('today');
                            },
                            child: Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'f1'),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                              height: 4,
                              width: 120,
                              color: (filterType == 'today')
                                  ? Colors.white
                                  : Colors.transparent)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              changeFilter('monthly');
                            },
                            child: Text(
                              'Monthly',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'f1'),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                              height: 4,
                              width: 120,
                              color: (filterType == 'monthly')
                                  ? Colors.white
                                  : Colors.transparent),
                        ],
                      )
                    ],
                  ),
                ),
                (filterType == 'monthly') ? Calendar() : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }

  changeFilter(String filter) {
    filterType = filter;
    setState(() {});
  }

  Slidable taskWidget(Color color, String title, String time) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.3,
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: Offset(0, 9),
              blurRadius: 20,
              spreadRadius: 1)
        ]),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
