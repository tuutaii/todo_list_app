import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  final String content;
  final int color;

  AddNote(
    this.content,
    this.color,
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
            'content': content.trim(),
            'color': color,
            'status': 1,
            'time': DateTime.now(),
          })
          .then((value) => print("Note Added"))
          .catchError((error) => print("Failed to add note: $error"));
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
