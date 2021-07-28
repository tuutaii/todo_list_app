import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Note extends StatefulWidget{
  const Note();

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
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
              'New Note',
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
        height: 550,
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
                  Text(
                    'Choose Color',
                    style: TextStyle(fontSize: 18,
                    fontFamily: 'f1'),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        color: Color(0xFF6074F9)
                      ),
                      ),Container(height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        color: Color(0xFFE42B6A),
                      ),
                      ),Container(height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        color: Color(0xFF5ABB56)
                      ),
                      ),Container(height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        color: Color(0xFF3D3A62)
                      ),
                      ),Container(height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        color: Color(0xFFF4CA8F)
                      ),
                      )
                    ],),
                  SizedBox(
                    height: 20,
                  ),
                  
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
              child: Text('Done', style: TextStyle(fontSize: 18, color: Colors.white,
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