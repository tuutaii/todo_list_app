



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Today extends StatelessWidget{
  const Today();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
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
                             
            
             
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text('TODAY, AUG 4/2018',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: 'f1', ),),
            ),
            
              ],
            
          
        )
        ),
      
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            onPressed:() {},
            backgroundColor: Color(0xFFF96060),       
            child: Icon(Icons.add),
            ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(

          color: Color(0xFF292E4E),
          notchMargin: 0,
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle ,
                          color: Colors.white,
                          size: 35,

                          ),
                          Text('My Task', 
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'f1', ),),
                        ],
                      ),
                      ),

                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.view_list_sharp ,
                          color: Colors.grey,
                          size: 35,
                          ),
                          Text('Menu', 
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'f1' ),),
                        ],
                      ),
                    ),   
                  ],
                ),

                Row(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.checklist_rounded  ,
                                  color: Colors.grey,
                                  size: 35,
                                  ),
                                  Text('Quick', 
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'f1' ),),

                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 40,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Icon(Icons.account_box_rounded,
                                      color: Colors.grey,
                                      size: 35,
                                     ),
                                    Text('Proifle', 
                                      style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'f1' ),),
                        ],
                      ),
                      ),
                          ],
                        ),
              ],
            ),),),
        )
        ;
  }
}