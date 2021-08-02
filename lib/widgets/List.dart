import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Listds extends StatefulWidget{
  const Listds();

  @override
  _ListdsState createState() => _ListdsState();
}

class _ListdsState extends State<Listds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Container( child: Text('a'),)],),
     
      // taskWidget(Color(0xfff96060), 'Meeting wiht someone', '9:00 AM'),
      // taskWidget(Colors.blue, 'Meeting wiht someone', '9:00 AM'),
      // taskWidget(Colors.green), 'Take your medicines', '9:00 AM'),
    );
  }
  Slidable taskWidget( Color color, String title, String time){
    return Slidable(
      actionPane:  SlidableDrawerActionPane(),
      actionExtentRatio: 0.3,
      child: Container(height: 80,
      margin:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.03),
          offset: Offset(0,9),
          blurRadius: 20,
          spreadRadius: 1
        )]
      ),
      child: 
      Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape:  BoxShape.circle,
              border: Border.all(color: Colors.blue)

            ),
          )
        ],),
      ),
    );
  }
}