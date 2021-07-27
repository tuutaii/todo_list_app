import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/sliable.dart';
import 'package:todo_list_app/widgets/tabbar.dart';
import 'package:todo_list_app/widgets/bar.dart';


class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tabbar(),
          Sliable(
            

          ),
          
          Bar(),
          
        ], 
      ),
    );
  }
}
