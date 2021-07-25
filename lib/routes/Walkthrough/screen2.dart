

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Column(       
            children: <Widget>[
              SizedBox(
                height: 60 ,
              ),
               Image.asset('assets/images/screen2.png',), 
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),             
                 child: Text('Welcom to aking', 
                  style: TextStyle(
                  color: Colors.black,                 
                  fontFamily: 'f1',
                  fontSize: 30,)),
               ), 
               Text('What going to happen tomorow?',
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.grey,
                 fontFamily: 'f1',

               ),
               ), 
               SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Image.asset('assets/images/Oval1.png'),
                  Image.asset('assets/images/Oval2.png'),
                  Image.asset('assets/images/Oval3.png'),

                ],
                ),   
                SizedBox(
                  height: 100,
                ),      
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[  
                    Container(
                      width: size.width,
                      child: 
                        Image.asset('assets/images/Group.png',
                        fit: BoxFit.cover,
                        width: double.infinity,) ,
                    ),
                     Positioned(
                    left: (size.width - 293) / 2,
                    top: 90,
                    
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(293, 48),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Color(0xFFFFFFFF), // background
                        onPrimary: Color(0xFF313131), // foreground
                    
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'f1',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: (size.width - 52) / 2,
                    top: 177,
                    child: TextButton(
                      
                      style: TextButton.styleFrom(
                        minimumSize: Size(52, 22),
                        //primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'f1',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                       
                  ],
                ),   
            ]              
          ),                     
        ),
    ); 
  }
}
