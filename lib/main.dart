import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/WorkList/Check_Create.dart';









void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: '1'),
      home: Check(),
    );
  }
}
