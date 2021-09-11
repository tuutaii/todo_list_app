import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/WorkList/Add_CheckList/Widget/addChecklist.dart';
import 'package:todo_list_app/routes/WorkList/HomeScreen/Home_Screen.dart';
import 'package:todo_list_app/widgets/PickColor.dart';

import 'Widget/check_item.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  TextEditingController _descriptionController = TextEditingController();

  int _color = 0xFF6074F9;

   int indexCheckItem = 1;

  List<TextEditingController> _listItemController = [
    for (int i = 0; i < 10; i++) TextEditingController(),
  ];

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
                          TextFormField(
                            controller: _descriptionController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              hintStyle: TextStyle(),
                            ),
                          ),
                          for (int i = 0; i < indexCheckItem; i++)
                            CheckItem(
                              index: i, 
                              controller: _listItemController[i],
                            ),

                          SizedBox(
                            height: 20,
                          ),                                        
                          //Add item
                          Container(
                            padding: EdgeInsets.all(20),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                    if (indexCheckItem < 10)
                                      indexCheckItem++;
                                  });
                              },
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
                          // Colors
                          Container(
                            child: ColorPicker(onSelectColor: (value) {
                              setState(() {
                                _color = value;
                              });
                            }),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Button
                    Addcheck(_descriptionController.text.trim(), _color, indexCheckItem,_listItemController)
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
