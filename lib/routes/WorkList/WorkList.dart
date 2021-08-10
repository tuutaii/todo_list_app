import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_list_app/routes/WorkList/Task_Create.dart';
import 'package:todo_list_app/routes/WorkList/Note_Create.dart';


import 'package:todo_list_app/widgets/Calendar.dart';

import 'Check_Create.dart';

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
  String taskPop = 'close';

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      onPressed: openTaskpop,
                      icon: Icon(Icons.sort_outlined),
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
              (filterType == 'monthly') ? Calendar() : Container(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      taskWidget(Colors.red, 'Meeting with someone', '9:00 AM'),
                      taskWidget(
                          Colors.blue, 'Meeting with someone', '9:00 AM'),
                      taskWidget(
                          Colors.green, 'Take your medicines', '9:00 AM'),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 110,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xff292343),
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('My Task',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontFamily: 'f1'))
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Menu',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontFamily: 'f1'))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 80,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.content_paste,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Quick',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontFamily: 'f1'))
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Profile',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontFamily: 'f1'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Positioned(
                          bottom: 25,
                          left: 0,
                          right: 0,
                          child: InkWell(
                              onTap: openTaskpop,
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xfff96060),
                                          Colors.red
                                        ]),
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text('+',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ))),
                              )))
                    ],
                  ))
            ],
          ),
          Container(
            child: (taskPop == 'open')
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.3),
                    child: Center(
                      child: InkWell(
                        onTap: closeTaskPop,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 1,
                              ),
                              InkWell(
                                onTap: openAddTask,
                                child: Container(
                                  child: Text(
                                    'Add Task',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'f1'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 1,
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              InkWell(
                                onTap: openNote,
                                child: Container(
                                  child: Text(
                                    'Add Quick Note',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'f1'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 1,
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              InkWell(
                                onTap: openCheck,
                                child: Container(
                                  child: Text(
                                    'Add Checklist',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'f1'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 1,
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }

  changeFilter(String filter) {
    filterType = filter;
    setState(() {});
  }

  openTaskpop() {
    taskPop = 'open';
    setState(() {});
  }

  closeTaskPop() {
    taskPop = 'close';
    setState(() {});
  }
  void openAddTask() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Task()));
  }
  void openNote() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Note()));
  }
  void openCheck() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Check()));
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
                    border: Border.all(
                      color: color,
                      width: 4,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'f1', color: Colors.black)),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Container(height: 50, width: 5, color: color)
            ],
          )),
      secondaryActions: [
        IconSlideAction(
          caption: 'Edit',
          color: Colors.white,
          icon: Icons.edit,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Delete',
          color: color,
          icon: Icons.delete,
          onTap: () {},
        )
      ],
    );
  }
}
