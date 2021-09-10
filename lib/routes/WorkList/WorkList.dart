import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_list_app/widgets/Calendar.dart';

class Tab1 extends StatefulWidget {
  const Tab1();

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Color(0xFFF96060),
                elevation: 0,
                title: Text(
                  'Work List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                actions: [
                  //Butotn
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                insetPadding: EdgeInsets.only(bottom: 700),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: SizedBox(
                                  height: 130,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 1,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            child: Text(
                                              'Incomplete Tasks',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            child: Text(
                                              'Completed Tasks',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            child: Text(
                                              'All Tasks',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      icon: Icon(Icons.sort_outlined),
                      color: Colors.white,
                      iconSize: 30)
                ],
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  indicator: UnderlineTabIndicator(
                      insets: EdgeInsets.symmetric(horizontal: 46)),
                  tabs: [
                    Tab(
                      // text: 'Today',
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Month',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            taskWidget(
                                Colors.red, 'Meeting with someone', '9:00am'),
                            taskWidget(
                                Colors.blue, 'Meeting with someone', '9:00am'),
                            taskWidget(
                                Colors.green, 'Take your medicines', '9:00am'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Calendar(),
                ],
              ),
            ),
          ),
          // Positioned(bottom: 0, left: 0, right: 0, child: Bar())
        ],
      ),
    );
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
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
