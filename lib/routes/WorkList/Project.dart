import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Projects',
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        body: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Personal
                  SizedBox(
                    height: 180,
                    width: 165,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffDBDDEF),
                                    width: 6,
                                  )),
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            Text(
                              'Personal',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'f1'),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '10 Tasks',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Teamworks
                  SizedBox(
                    height: 180,
                    width: 165,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffE8C7D2),
                                    width: 6,
                                  )),
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            Text(
                              'Teamworks',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'f1'),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '5 Tasks',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Home
                  SizedBox(
                    height: 180,
                    width: 165,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffD4F1D3),
                                    width: 6,
                                  )),
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'f1'),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '10 Tasks',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Meet
                  SizedBox(
                    height: 180,
                    width: 165,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffF9DFFB),
                                    width: 6,
                                  )),
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            Text(
                              'Meet',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'f1'),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '10 Tasks',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Button
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff6074F9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.03),
                                  offset: Offset(0, 9),
                                  blurRadius: 20,
                                  spreadRadius: 1)
                            ]),
                        child: Center(
                            child: Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ))),
                  ),
                ),
              ),
            ],
          ),
          // Positioned(bottom: 0, left: 0, right: 0, child: Bar())
        ]));
  }
}
