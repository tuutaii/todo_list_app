import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/auth_bloc.dart';
import 'package:todo_list_app/routes/Sign_In/Forgot_Pass.dart';
import 'package:todo_list_app/routes/Sign_In/Success.dart';
import 'package:todo_list_app/routes/Walkthrough/Get_Started.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  AuthBloc authBloc = new AuthBloc();

  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

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
              style: TextStyle(fontSize: 32),
            ),
            Text(
              'Sign in to continue',
              style:
                  TextStyle(fontSize: 16, color: Colors.grey),
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
                child: StreamBuilder(
              stream: authBloc.userStream,
              builder: (context, snapshot) => TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _userController,
                decoration: InputDecoration(
                  
                  border: UnderlineInputBorder(),
                  hintText: 'tuutaii194@gmail.com',
                  errorText:
                      snapshot.hasError ? snapshot.error.toString() : null,
                ),
              ),
            )),
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
                child: StreamBuilder(
              stream: authBloc.passStream,
              builder: (context, snapshot) => TextField(
                obscureText: true,
                controller: _passController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your password',
                  errorText:
                      snapshot.hasError ? snapshot.error.toString() : null,
                ),
              ),
            )),
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
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(300, 50),
                      backgroundColor: Color(0xffF96060),
                      alignment: Alignment.center),
                  child: InkWell(
                    onTap: loginclicked,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
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

  void openGetstarted() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }

  void loginclicked() async {
    setState(() {
      var isValid =
          authBloc.isVaild(_userController.text, _passController.text);
      if (isValid) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Success()));
      }
    });
  }
}
