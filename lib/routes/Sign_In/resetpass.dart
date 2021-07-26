import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reset extends StatelessWidget{
  const Reset();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        
        child: Container(
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.fromLTRB(20, 10, 30, 20),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start ,

              children: <Widget>[
              SizedBox(
                  height: 10,
                ),     

              IconButton( 
                  onPressed:() {},
                  icon: Icon(Icons.west, size: 40,)
                  ),             
                                  
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text('Reset Password',
                          style: TextStyle(
                          fontFamily: 'f1',
                          fontSize: 30),),
                ),
                Text('Reset code was sent to your email. Please enter ther code anh create new password',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'f1',
                  color: Colors.grey),
                  ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text('Reset code',
                  style: TextStyle(
                    fontFamily: 'f1',
                    fontSize:20, 
                  ),
                  ),
                ),
 
                TextField(
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your number',   
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text('New password',
                  style: TextStyle(
                    fontFamily: 'f1',
                    fontSize:20, 
                  ),
                  ),
                ),

                TextField(
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your password',   
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text('Confirm password',
                  style: TextStyle(
                    fontFamily: 'f1',
                    fontSize:20, 
                  ),
                  ),
                ),

                TextField(
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your confirm password',   
                  ),
                ), 



            Padding(
              padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
              child: SizedBox(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(300, 50),
                    backgroundColor: Colors.red,
                    alignment: Alignment.center
                  ),
                  child:  Text('Change password',
                  style: TextStyle(
                    fontFamily: 'f1',
                    fontSize: 18 ,
                    color: Colors.white),),
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