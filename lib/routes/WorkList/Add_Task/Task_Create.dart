import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list_app/routes/WorkList/HomeScreen/Home_Screen.dart';

import 'Widget/addTask_firebase.dart';
import 'Widget/description_text.dart';
import 'Widget/title_text.dart';

class Task extends StatefulWidget {
  const Task();

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Task> {
  String link = '';
  String _project = '', _projectID = '';

  List<String> member = [];

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  DateTime _date = DateTime.now();

  void addMember(String uidMember) {
    setState(() {
      member.add(uidMember);
    });
  }

  void removeMember(String uidMember) {
    setState(() {
      member.remove(uidMember);
    });
  }

  String getText() {
    // ignore: unnecessary_null_comparison
    if (_date == null) {
      return 'Anytime';
    } else {
      return DateFormat('dd/MM/yyyy').format(_date);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  void setProjectValue(String title, String id) {
    setState(() {
      _project = title;
      _projectID = id;
    });
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
                            child: Row(
                              children: [
                                link != ''
                                    ? CircleAvatar(
                                        radius: 25,
                                        backgroundImage: NetworkImage(
                                          '$link',
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage('assets/images/bts.png'),
                                      ),
                                SizedBox(width: 10),
                                // Text(
                                //   users!.displayName.toString().substring(0, 8),
                                //   style: TextStyle(
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                // ),
                              ],
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
                            child: InkWell(
                              onTap: () {
                                // openProjectDialog(user!, setProjectValue);
                              },
                              child: Center(
                                  child: Text(
                                _project == '' ? 'Project' : _project,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Titletext(titlecontroller: _titleController),
                    Descriptiontext(
                      textcontroller: _descriptionController,
                    ),
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
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add Member',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    StreamBuilder(
                                      stream: FirebaseFirestore.instance
                                          .collection('users')
                                          .snapshots(),
                                      builder: (context,
                                          AsyncSnapshot<QuerySnapshot>
                                              snapshot) {
                                        if (snapshot.hasData) {
                                          List<QueryDocumentSnapshot<Object?>>
                                              data = snapshot.data!.docs;
                                          return Row(
                                            children: [
                                              for (int i = 0;
                                                  i < data.length;
                                                  i++)
                                                if (member
                                                    .contains(data[i]['uid']))
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 25,
                                                          backgroundImage:
                                                              NetworkImage(
                                                            data[i]['avatar'],
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: 0,
                                                          right: 0,
                                                          child: InkWell(
                                                            onTap: () =>
                                                                removeMember(
                                                                    data[i][
                                                                        'uid']),
                                                            child: Icon(
                                                              Icons
                                                                  .remove_circle,
                                                              color: Colors.red,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                            ],
                                          );
                                        }
                                        return Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/bts.png",
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Container(
                                      width: member.length == 0 ? 90 : 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF4F4F4),
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: InkWell(
                                        onTap: () {
                                          openMemberDialog(addMember, member);
                                        },
                                        child: Center(
                                            child: Text(
                                          member.length == 0 ? 'Anyone' : '+',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          AddTask(_project, _projectID, _titleController,
                              _descriptionController),
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

  Future<void> openMemberDialog(Function press, List<String> _listUser) async =>
      await showDialog(
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return StreamBuilder(
            stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                List<QueryDocumentSnapshot<Object?>> data = snapshot.data!.docs;
                return SimpleDialog(
                  backgroundColor: Color(0xFFF4F4F4),
                  contentPadding: EdgeInsets.all(0),
                  children: [
                    for (int i = 0; i < data.length; i++)
                      if (!_listUser.contains(data[i]['uid']))
                        SimpleDialogOption(
                          child: Row(
                            children: [
                              data[i]['avatar'] != ''
                                  ? CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(
                                        data[i]['avatar'],
                                      ),
                                    )
                                  : CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                        "assets/images/bts.png",
                                      ),
                                    ),
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  Text(data[i]['email']),
                                ],
                              ),
                            ],
                          ),
                          onPressed: () {
                            press(data[i]['uid']);
                            Navigator.pop(context);
                          },
                        ),
                  ],
                );
              }
              return Container(
                color: Colors.white,
                child: Center(
                  child: Image.asset("assets/images/bts.png"),
                ),
              );
            },
          );
        },
      );

  // Future<void> openProjectDialog(User users, Function press) async =>
  //     await showDialog(
  //       barrierColor: Colors.transparent,
  //       context: context,
  //       builder: (BuildContext context) {
  //         return StreamBuilder(
  //           stream: FirebaseFirestore.instance
  //               .collection('users')
  //               .doc(users.uid)
  //               .collection('project')
  //               .snapshots(),
  //           builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
  //             if (snapshot.hasData) {
  //               List<QueryDocumentSnapshot<Object?>> data = snapshot.data!.docs;
  //               return SimpleDialog(
  //                 backgroundColor: Color(0xFFF4F4F4),
  //                 contentPadding: EdgeInsets.all(0),
  //                 children: [
  //                   for (int i = 0; i < data.length; i++)
  //                     SimpleDialogOption(
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Text(
  //                           data[i]['title'].toString(),
  //                           style: TextStyle(
  //                             fontSize: 19,
  //                             fontWeight: FontWeight.w500,
  //                           ),
  //                         ),
  //                       ),
  //                       onPressed: () {
  //                         press(data[i]['title'].toString(),
  //                             data[i]['id'].toString());
  //                         Navigator.pop(context);
  //                       },
  //                     ),
  //                 ],
  //               );
  //             }
  //             return Container(
  //               color: Colors.white,
  //               child: Center(
  //                 child: Image.asset("assets/images/loader.gif"),
  //               ),
  //             );
  //           },
  //         );
  //       },
  //     );

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
