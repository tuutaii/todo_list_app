import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  _ProfilesState createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Profiles',
            style:
                TextStyle(fontFamily: 'f1', fontSize: 20, color: Colors.black),
          ),
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              offset: Offset(0, 9),
                              blurRadius: 20,
                              spreadRadius: 1)
                        ]),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Row(
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xffDBDDEF),
                                        width: 6,
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Stepphen Chow',style: TextStyle(fontSize: 18, fontFamily: 'f1'),),
                                    Text('hungmn@devera.vn',style: TextStyle(fontSize: 16, fontFamily: 'f1', color: Colors.grey))
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '120',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Create Tasks',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontFamily: 'f1'),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '80',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Completed Task',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontFamily: 'f1'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 100,
                          width: 160,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffF96060),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.03),
                                      offset: Offset(0, 9),
                                      blurRadius: 20,
                                      spreadRadius: 1)
                                ]),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          height: 100,
                          width: 160,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xff6074F9),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.03),
                                      offset: Offset(0, 9),
                                      blurRadius: 20,
                                      spreadRadius: 1)
                                ]),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          height: 100,
                          width: 160,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffF96060),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.03),
                                      offset: Offset(0, 9),
                                      blurRadius: 20,
                                      spreadRadius: 1)
                                ]),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 205,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              offset: Offset(0, 9),
                              blurRadius: 20,
                              spreadRadius: 1)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Text(
                              'Statistic',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'f1',
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1,
                                        )),
                                        child: Center(child: Text('60%', style: TextStyle(fontSize:18, fontWeight:FontWeight.bold,)),)
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Events',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'f1'),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1,
                                        )),
                                        child: Center(child: Text('40%', style: TextStyle(fontSize:18, fontWeight:FontWeight.bold,)),)
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'To do',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'f1'),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1,
                                        )),
                                        child: Center(child: Text('80%', style: TextStyle(fontSize:18, fontWeight:FontWeight.bold,)),)
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Quick Notes',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'f1'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
