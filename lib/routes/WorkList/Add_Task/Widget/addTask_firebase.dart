import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  String link = '';

  String _projectValue = '', _projectId = '';

  List<String> member = [];

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  AddTask(this._projectId, this._projectValue, this._descriptionController,
      this._titleController);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('new_task');

    Future<void> addTask() async {
      // Call the user's CollectionReference to add a new user
      users
          .add({
            'for': users.id,
            'inID': _projectId,
            'inName': _projectValue,
            'title': _titleController,
            'description': _descriptionController,
          
          })
          .then((value) => print("Task Added"))
          .catchError((error) => print("Failed to add task: $error"));
      Navigator.pop(context);
    }

    return TextButton(
      onPressed: addTask,
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: Size(300, 50),
          backgroundColor: Color(0xffF96060),
          alignment: Alignment.center),
      child: Text(
        'Done',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
      ),
    );
  }
}
