import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar();

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  DateTime today = new DateTime.now();
  var monthNames = [
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEPT',
    'OCT',
    'DEC',
    'NOV'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 15.0,
                    offset: Offset(0.0, 3))
              ],
            ),
            child: TableCalendar(
              focusedDay: selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
              daysOfWeekVisible: true,
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
              },
              calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  selectedTextStyle: TextStyle(color: Colors.white),
                  selectedDecoration: BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle)),
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'TODAY ${monthNames[today.month - 1]}, ${today.day}/ ${today.year}',
              style: TextStyle(
                color: Color(0xFF9A9A9A),
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
