import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/PickColor.dart';

class Addbutton extends StatefulWidget {
  const Addbutton({Key? key}) : super(key: key);

  @override
  _AddbutotnState createState() => _AddbutotnState();
}

class _AddbutotnState extends State<Addbutton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          showAddProjectDialog(context);
        },
        child: SizedBox(
          height: 80,
          width: 80,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff6074F9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.03),
                        offset: Offset(0, 9),
                        blurRadius: 20,
                        spreadRadius: 1)
                  ]),
              child: Center(
                  child: Text(
                '+',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ))),
        ),
      ),
    );
  }

  Future<void> showAddProjectDialog(BuildContext context) async {
    int _color = 0xFF6074F9;
    final _formKey = GlobalKey<FormState>();
    TextEditingController _projectController = TextEditingController();
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            contentPadding: EdgeInsets.all(20),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your Project",
                          ),
                          validator: (val) =>
                              val!.isNotEmpty ? null : 'Please enter your text',
                          controller: _projectController,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Choose Color",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        // Row(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     for (int i = 0; i < 5; i++)
                        //       ColorPicker(onSelectColor: (value) {
                        //       }),
                        //   ],
                        // ),
                        SizedBox(height: 20),
                        Container(
                          child: ColorPicker(onSelectColor: (value) {
                            setState(() {
                              _color = value;
                            });
                          }),
                        ),
                        SizedBox(height: 50,),
                        TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                minimumSize: Size(300, 50),
                                backgroundColor: Color(0xffF96060),
                                alignment: Alignment.center),
                            child: Text(
                              'Done',style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () async {
                              int size = 0;
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(FirebaseAuth.instance.currentUser!.uid)
                                  .collection("project")
                                  .get()
                                  .then((snap) {
                                size = snap.docs
                                    .length; // will return the collection size
                              });
                              if (_formKey.currentState!.validate()) {
                                FirebaseFirestore.instance
                                    .collection('users')
                                    .doc(FirebaseAuth.instance.currentUser!.uid)
                                    .collection("project")
                                    .doc('${size + 1}')
                                    .set({
                                  'title': _projectController.text.trim(),
                                  'color': _color,
                                  'task': 0,
                                  'id': '${size + 1}'
                                });
                                Navigator.pop(context);
                              }
                            }),
                      ],
                    ),
                  ),
                );
              },
            ));
      },
    );
  }
}
