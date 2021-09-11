import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Addcheck extends StatelessWidget {
  final String content;
  final int color;
  int indexCheckItem = 2;

  List<TextEditingController> _listItemController = [
    for (int i = 0; i < 10; i++) TextEditingController(),
  ];

  Addcheck(
    this.content,
    this.color,
    this.indexCheckItem,
    this._listItemController
  );
 

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('quick_note');

    Future<void> addNote() async {
      // Call the user's CollectionReference to add a new user
      users
          .add({
            'description': content.trim(),
            'color': color,
            'time': DateTime.now(),
            'status': 0,
            'list': true,
            'length': indexCheckItem,
            for (int i = 0; i < indexCheckItem; i++)
              'item$i': _listItemController[i].text.trim(),
            for (int i = 0; i < indexCheckItem; i++) 'checked$i': false,
          })
          .then((value) => print("CheckList Added"))
          .catchError((error) => print("Failed to add checkList: $error"));
      Navigator.pop(context);
    }

    return TextButton(
      onPressed: addNote,
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
