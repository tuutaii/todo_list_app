import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_list_app/routes/Sign_In/register.dart';
import 'package:todo_list_app/routes/Walkthrough/Home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'f1'),
      home: Register(),
    );
  }
}
