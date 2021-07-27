import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  const Header();
  @override

  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              height: 200,
              color: Color(0xFFF96060),
              
              child: Stack(
                children: [             
                           Center(
                             child: Text('Work List',
                              style: TextStyle(
                                fontFamily: 'f1',
                                fontSize: 20,
                                color: Colors.white
                              ),
                              ),
                           ),  
                          Container(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Image.asset('assets/images/icon.png'),
                            )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                    ),
 
                                    child: Text('Today',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      fontSize: 18,
                                      color: Colors.white
                                    ),),
 
                                    ),
                                    ),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                    ),
                                    child: Text('Month',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      fontSize: 18,
                                      color: Colors.white
                                ),),
 
                                ),
                                ),
                          ), 
                            ],
                          ), 
                      ],  
              ),      
            ),
            
              ],
            
          
        );
  }

}