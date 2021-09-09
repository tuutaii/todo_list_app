import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/password_field.dart';
import 'package:todo_list_app/widgets/text_field.dart';
import 'Forgot_Pass.dart';

class Reset extends StatefulWidget {
  const Reset();

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passrController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot()));
          },
          icon: Icon(Icons.west, color: Colors.black, size: 30,),
        ),
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(20, 10, 30, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  'Reset Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Reset code was sent to your email. Please enter ther code anh create new password',
                style: TextStyle(
                    fontSize: 16, fontFamily: 'f1', color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  'Reset code',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              TextFieldWidget(
                  text: "Enter your code", controller: _userController),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  'New password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              PasswordFieldWidget(pass: "Enter your password", controller: _passrController,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  'Confirm password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              PasswordFieldWidget(controller: _confirmpassController, pass: "Enter your confirm password",),
              SizedBox(
                height: 60,
              ),
              Center(
                child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: Size(300, 50),
                          backgroundColor: Color(0xffF96060),
                          alignment: Alignment.center),
                      child: Text(
                        'Change password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ), 
            ],
          ),
        ),
      ),
    );
  }
}
