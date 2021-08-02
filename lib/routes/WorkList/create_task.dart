

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Task extends StatefulWidget {
  const Task();

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 151,
        child: DefaultTabController(
          length: 2,
          child: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'New Task',
              style: TextStyle(
                fontFamily: 'f1',
              ),
            ),
            backgroundColor: Color(0xFFF96060),
            centerTitle: true,
          ),
        ),
      ),
      Container( 
        margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('For',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'f1'
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Text(     
                    'Asignee',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('In',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'f1'
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Text(
                    'Project',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey.withOpacity(0.2),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tittle',
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 18,
                    fontFamily: 'f1'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add description here',
                      ),
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey.withOpacity(0.2),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Due Date',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Add member',
                    style: TextStyle(fontSize: 18,
                    fontFamily: 'f1'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey.withOpacity(0.2)),
                          child: Text('Anyone', style: TextStyle(fontSize: 18),),
                          )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(padding: EdgeInsets.symmetric(vertical: 15),
            width: 300,
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xFFF96060),
            ),
            child: Center(
              child: Text('Add Task', style: TextStyle(fontSize: 18, color: Colors.white,
              fontFamily: 'f1')) ,
            ),
            ),
            
          ],
        ),
      ),
      )
    ]);
  }
}
