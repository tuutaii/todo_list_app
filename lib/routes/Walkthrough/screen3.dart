import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Screen3 extends StatelessWidget {
  const Screen3();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 60 ,
            ),
            Image.asset('assets/images/screen3.png',
            fit: BoxFit.cover),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text('Work happens',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'f1',
                    fontSize: 30 ),),
                  ),
                  Text('Get notified when work happens',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'f1',
                fontSize: 20
              
              )
              ),
              ],
            ),

             

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('assets/images/Oval2.png'),
                Image.asset('assets/images/Oval1.png'),
                Image.asset('assets/images/Oval3.png'),
              ],),
              SizedBox(
                height: 20,
              ),
            Stack(
                alignment: Alignment.center,
                children: <Widget>[ 
                Image.asset('assets/images/Group2.png',
                fit: BoxFit.cover,
                width: double.infinity,
                alignment: Alignment.bottomCenter,),
                Container(
                  margin: EdgeInsets.fromLTRB(0,0,0, 50),
                  child: Expanded(
                    
                    child: SizedBox(
                    
                    height: 50,
                    child: TextButton(
                    
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(300, 50),
                      backgroundColor: Colors.white,
                      alignment: Alignment.center
                    ),
                      onPressed: () {},
                      child: Text('Get started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'f1',
                        fontWeight: FontWeight.bold 
                      ),
                      ),
                      ),
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: Text('Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'f1',

                  ),),
                )
              ],
            )
          ],
        ),
      ),

    );
  }

}
