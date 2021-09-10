
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/BottomBar/Profiles.dart';
import 'package:todo_list_app/routes/BottomBar/Project.dart';
import 'package:todo_list_app/routes/BottomBar/Quick.dart';
import 'package:todo_list_app/routes/BottomBar/WorkList.dart';
import 'package:todo_list_app/routes/WorkList/Add_CheckList/Check_Create.dart';
import 'package:todo_list_app/routes/WorkList/Add_Note/Note_Create.dart';
import 'package:todo_list_app/routes/WorkList/Add_Task/Task_Create.dart';


class Bar extends StatefulWidget {
  Bar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Bartab();
  }
}

class Bartab extends State<Bar> {
  int _selectedIndex = 0;
  List<Widget> pagelist = <Widget>[
    Tab1(),
    Project(),
    Quick(),
    Profiles(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 60,
      child: Scaffold(
        body: pagelist[_selectedIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: SizedBox(
                      height: 214,
                      width: 268,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 1,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Task()));
                            },
                            child: Container(
                              child: Text(
                                'Add Task',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.black.withOpacity(0.2),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Note()));
                            },
                            child: Container(
                              child: Text(
                                'Add Quick Note',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.black.withOpacity(0.2),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Check()));
                            },
                            child: Container(
                              child: Text(
                                'Add Checklist',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
        bottomNavigationBar: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: BottomNavigationBar(
            backgroundColor: Color(0xff292343),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.check_circle,
                ),
                label: 'My Task',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.content_paste),
                label: 'Quick',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: const Color(0xFF8E8E93),
            selectedItemColor: const Color(0xFFFFFFFF),
            selectedLabelStyle: const TextStyle(
                fontFamily: 'AvenirNextRoundedPro',
                fontSize: 12,
                fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'AvenirNextRoundedPro',
                fontSize: 12,
                fontWeight: FontWeight.bold),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
