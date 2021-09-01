import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/Bottom_Bar.dart';

class Success extends StatefulWidget {
  const Success();

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), openTab);

    super.initState();
    // DO YOUR STUFF
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Image.asset('assets/images/success.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'Succesful!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                'You have succesfully change password. Please use your new password when logging in.',
                style: TextStyle(fontFamily: 'f1', fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void openTab() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Bar()));
  }
}
