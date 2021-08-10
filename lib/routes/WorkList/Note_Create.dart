import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'WorkList.dart';

class Note extends StatefulWidget{
  const Note();

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Tab1()));}, 
              icon: Icon(Icons.west)),

            title: Text(
              'New Note',
              style: TextStyle(
                fontFamily: 'f1',
                fontSize: 20
              ),
            ),
            backgroundColor: Color(0xFFF96060),
            centerTitle: true,
            elevation: 0,
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  height: 30,
                  color: Color(0xFFF96060),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.8),

                  )),
                  Container(
                    margin:  EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.white

                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.86,
                    child: SingleChildScrollView(
          child: Column(
          children: [
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

              ],
            ),

          ),
        );
     
  }
}