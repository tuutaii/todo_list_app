import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list_app/routes/WorkList/Add_Task/Composnetn/description_text.dart';
import 'package:todo_list_app/routes/WorkList/Add_Task/Composnetn/title_text.dart';
import 'package:todo_list_app/routes/WorkList/HomeScreen/Home_Screen.dart';

class Task extends StatefulWidget {
  const Task();

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Task> {
   TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  DateTime _date = DateTime.now();

  String getText() {
    if (_date == null) {
      return 'Anytime';
    } else {
      return DateFormat('dd/MM/yyyy').format(_date);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bar()));
            },
            icon: Icon(Icons.west)),
        title: Text(
          'New Task',
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
                  height: 60,
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
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('For',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'Assignee',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('In',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'Project',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Titletext(titlecontroller: _titleController),
                    Descriptiontext(textcontroller: _descriptionController,),
                    Container(
                      height: 66,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      color: Colors.grey.withOpacity(0.2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Due Date',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () => pickDate(context),
                              child: Container(
                                height: 32,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Color(0xff6074F9),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Text(
                                  getText(),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )),
                              ))
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Add members
                          Text(
                            'Add member',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'Anyone',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          // Button
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color(0xFFF96060),
                            ),
                            child: Center(
                              child: Text('Add Task',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'f1')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future pickDate(BuildContext context) async {
    final newDate = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (newDate == null) return;
    setState(() {
      _date = newDate;
    });
  }
}
