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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171,
      child: Scaffold(
        floatingActionButton: Container(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFFF96060),
            child: Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            currentIndex: this.selectedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF292E4E),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 35,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle),
                label: ("My Task"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_list_sharp),
                label: ("Menu"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist_rounded),
                label: ("Quick"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ("Profile"),
              ),
            ],
            onTap: (int index) {
              this.setState(() {
                this.selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
