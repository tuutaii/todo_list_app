import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_list_app/routes/Sign_In/Success.dart';
import 'package:todo_list_app/routes/Walkthrough/Home.dart';
import 'package:todo_list_app/routes/WorkList/Profiles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'f1'),
      home: Screen1(),
    );
  }
}
