import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/Sign_In/Forgot_Pass.dart';
import 'package:todo_list_app/routes/Walkthrough/Home.dart';
import 'package:todo_list_app/widgets/Bottom_Bar.dart';
import 'package:todo_list_app/widgets/fire_base.dart';

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
              style: TextStyle(fontSize: 32),
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
              child: TextFormField(
                
                keyboardType: TextInputType.emailAddress,
                controller: _userController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'tuutaii194@gmail.com',
                ),
              ),
            ),
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
              child: TextField(
                obscureText: true,
                controller: _passController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your password',
                ),
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
                                    builder: (context) => Bar()));
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
                  child: InkWell(
                    onTap: () {},
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
            ),
          ],
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot()));
  }
}
