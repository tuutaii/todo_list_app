import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  Bar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Bartab();
  }
}

class Bartab extends State<Bar> {
  int selectedIndex = 0;
  String taskPop = 'close';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    
        Column(
          children: [Container(
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
                  ))],
        ),
        
      ]
    );
  }

  openTaskpop() {
    taskPop = 'open';
    setState(() {});
  }

  closeTaskPop() {
    taskPop = 'close';
    setState(() {});
  }
}
