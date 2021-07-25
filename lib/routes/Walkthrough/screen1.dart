import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1();
  @override
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
                  fontWeight: FontWeight.bold,
                  fontFamily: 'f1',
                  fontSize: 48,)),
               ) 
                
            ] 
             
          ),
                     
        ),
    );
  }
}