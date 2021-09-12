import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/Sign_In/Forgot_Pass.dart';
import 'package:todo_list_app/routes/Sign_In/Success.dart';
import 'package:todo_list_app/routes/Sign_In/register.dart';
import 'package:todo_list_app/routes/Walkthrough/Home.dart';
import 'package:todo_list_app/widgets/Account.dart';
import 'package:todo_list_app/widgets/password_field.dart';
import 'package:todo_list_app/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  bool isloading = false;

  @override
  void dispose() {
    _userController.dispose();
    _passController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen1()));
            },
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
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
            ),
            Text(
              'Sign in to continue',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Username',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
                child: TextFieldWidget(
                    text: "Enter your email..", controller: _userController)),
            SizedBox(
              height: 40,
            ),
            Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
                child: PasswordFieldWidget(
              pass: 'Enter your password..',
              controller: _passController,
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Forgot()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
              child: SizedBox(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isloading = true;
                    });
                      print(_userController.text + _passController.text);           
                    if (_userController.text.isNotEmpty &&
                        _passController.text.isNotEmpty) {
                      setState(() {
                        isloading = true;
                      });
                      logIn(_userController.text, _passController.text)
                          .then((user) {
                        if (user != null) {
                          print("Login Sucessfull");
                          setState(() {
                            isloading = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Success()));
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('User not found'),
                                );
                              });
                          setState(() {
                            isloading = false;
                          });
                        }
                      });
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Please enter all Fields'),
                            );
                          });
                      setState(() {
                        isloading = false;
                      });
                    }
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(300, 50),
                      backgroundColor: Color(0xffF96060),
                      alignment: Alignment.center),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont't have an account?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff347AF0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
