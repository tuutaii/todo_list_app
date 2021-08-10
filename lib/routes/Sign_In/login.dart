import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/Sign_In/forgetpass.dart';
import 'package:todo_list_app/routes/Walkthrough/getstarted.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: openGetstarted,
            icon: Icon(
              Icons.west,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome back!',
              style: TextStyle(fontFamily: 'f1', fontSize: 32),
            ),
            Text(
              'Sign in to continue',
              style:
                  TextStyle(fontSize: 16, fontFamily: 'f1', color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Username',
              style: TextStyle(
                fontFamily: 'f1',
                fontSize: 20,
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
            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'f1',
                fontSize: 20,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openForgotPassword,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 18, fontFamily: 'f1'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
              child: SizedBox(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(300, 50),
                      backgroundColor: Colors.red,
                      alignment: Alignment.center),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontFamily: 'f1', fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot()));
  }
   void openGetstarted() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
