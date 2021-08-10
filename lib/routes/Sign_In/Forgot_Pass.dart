import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/Sign_In/Reset_Pass.dart';
import 'login.dart';

class Forgot extends StatefulWidget {
  const Forgot();

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(20, 10, 30, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              IconButton(
                  onPressed: openLoginPage,
                  icon: Icon(
                    Icons.west,
                    size: 40,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontFamily: 'f1', fontSize: 30),
                ),
              ),
              Text(
                'Please enter your email below to recevie your password reset instructions',
                style: TextStyle(
                    fontSize: 15, fontFamily: 'f1', color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontFamily: 'f1',
                    fontSize: 20,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'tuutaii194@gmail.com',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
  
                  child: Container(
                    child: SizedBox(
                      child: TextButton(
                        onPressed: openResetPassword,
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(300, 50),
                            backgroundColor: Colors.red,
                            alignment: Alignment.center),
                        child: Text(
                          'Send Request',
                          style: TextStyle(
                              fontFamily: 'f1',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
             
            ],
          ),
        ),
      ),
    );
  }

  void openResetPassword() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Reset()));
  }
  openLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
