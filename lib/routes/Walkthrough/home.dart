
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Get_Started.dart';

class Screen1 extends StatefulWidget {
  const Screen1();

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  
  @override
 void initState() {
   Timer(Duration(seconds: 5), openOnBoard);

  super.initState();    
  // DO YOUR STUFF
}
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,        
            children: <Widget>[
               Image.asset('assets/images/fill1.png'), 
               Container(
                 margin: EdgeInsets.all(20),
                 child: Text('aking', 
                  style: TextStyle(
                  color: Colors.black,
                  shadows: [Shadow(
                    blurRadius: 20,
                    offset: Offset(0,10),
                    color: Colors.black.withOpacity(0.5)) 
                  ], 
                  fontWeight: FontWeight.bold,
                  fontFamily: 'f1',
                  fontSize: 48,)),
               ) 
                
            ] 
             
          ),
                     
        ),
    );
  }
  void openOnBoard(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding()));
  }
}