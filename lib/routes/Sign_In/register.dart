import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/routes/Sign_In/Login.dart';
import 'package:todo_list_app/widgets/fire_base.dart';
import 'package:todo_list_app/widgets/password_field.dart';
import 'package:todo_list_app/widgets/text_field.dart';

class Register extends StatefulWidget {
  const Register();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Register> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
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
              'Create a account !',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
            ),
            Text(
              'Please enter all the fileds',
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
              controller: _passController,
              pass: "Enter your password..",
            )),
            SizedBox(
              height: 40,
            ),
            Text(
              'Confirm Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            PasswordFieldWidget(
              controller: _confirmpassController,
              pass: "Enter your password again",
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
              child: SizedBox(
                child: TextButton(
                  onPressed: () async {
                    if (_userController.text.isNotEmpty &&
                        _passController.text.isNotEmpty &&
                        _passController.text == _confirmpassController.text) {
                      setState(() {
                        isloading = true;
                      });
                      createAccount(
                              _userController.text.trim(), _passController.text)
                          .then((user) {
                        if (user != null) {
                          setState(() {
                            isloading = false;
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LoginPage()));
                          print("Account Created Sucessfull");
                        } else {
                          print("Login Failed");
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(child: Text('Error')),
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
                      'Register',
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
}
