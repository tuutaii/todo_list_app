import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/Bottom_Bar.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  List<int> selectedList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bar()));
            },
            icon: Icon(Icons.west)),
        title: Text(
          'Add Check List',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                  color: Color(0xff292E4E),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.86,
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
                          //Title
                          Text(
                            'Title',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Content
                          Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                              style: TextStyle(
                                fontSize: 16,
                              )),

                          SizedBox(
                            height: 20,
                          ),
                          // List check
                          CheckboxListTile(
                            title: Text('List Item 1',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value) {
                              setState(() {
                                if (value == true) {
                                  selectedList.add(2);
                                } else {
                                  selectedList.remove(2);
                                }
                              });
                            },
                            value: selectedList.contains(2),
                          ),
                          CheckboxListTile(
                            title: Text('List Item 2',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value) {
                              setState(() {
                                if (value == true) {
                                  selectedList.add(1);
                                } else {
                                  selectedList.remove(1);
                                }
                              });
                            },
                            value: selectedList.contains(1),
                          ),
                          CheckboxListTile(
                            title: Text('List Item 3',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value) {
                              setState(() {
                                if (value == true) {
                                  selectedList.add(3);
                                } else {
                                  selectedList.remove(3);
                                }
                              });
                            },
                            value: selectedList.contains(3),
                          ),
                          CheckboxListTile(
                            title: Text('List Item 4',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value) {
                              setState(() {
                                if (value == true) {
                                  selectedList.add(4);
                                } else {
                                  selectedList.remove(4);
                                }
                              });
                            },
                            value: selectedList.contains(4),
                          ),
                          //Add item
                          Container(
                            padding: EdgeInsets.all(20),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                '+ Add new item',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Choose Color',
                            style: TextStyle(fontSize: 18, fontFamily: 'f1'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // COlors
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF6074F9)),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFFE42B6A),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF5ABB56)),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF3D3A62)),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFFF4CA8F)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Button
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFFF96060),
                      ),
                      child: Center(
                        child: Text('Done',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
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
