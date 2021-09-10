import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo_list_app/widgets/fire_base.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  _ProfilesState createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  String uid = '', _email = '';

  void loadID() {
    if (uid == '')
      setState(() {
        uid = FirebaseAuth.instance.currentUser!.uid;
      });
  }

  void loadData() {
    if (uid != '') {
      FirebaseFirestore.instance.collection('users').doc(uid).get().then(
        (DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            setState(() {
              Map<String, dynamic> data =
                  documentSnapshot.data() as Map<String, dynamic>;
              _email = data['email'];
            });
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    loadID();
    loadData();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              logOut(context);
            },
            icon: Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Profiles',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profiles//
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
                                  child: Image.asset('assets/images/bts.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Stepphen Chow',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('$_email',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'f1',
                                            color: Colors.grey))
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
                //Scroll ngang//
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
                            child: Padding(
                              padding: const EdgeInsets.all(27),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Events',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    '12 Tasks',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
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
                            child: Padding(
                              padding: const EdgeInsets.all(27),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('To do Task',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    '12 Tasks',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
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
                            child: Padding(
                              padding: const EdgeInsets.all(27),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Events',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    '12 Task',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //Static//
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
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1200,
                                    radius: 80,
                                    lineWidth: 5,
                                    percent: 0.6,
                                    center: Text('60%'),
                                    progressColor: Colors.red,
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
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1200,
                                    radius: 80,
                                    lineWidth: 5,
                                    percent: 0.4,
                                    center: Text('40%'),
                                    progressColor: Colors.blue,
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
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1200,
                                    radius: 80,
                                    lineWidth: 5,
                                    percent: 0.8,
                                    center: Text('80%'),
                                    progressColor: Colors.green,
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
