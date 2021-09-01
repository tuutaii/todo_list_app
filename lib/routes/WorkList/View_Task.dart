import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  bool _isVisible = true;

  void hideshow() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.7),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Positioned(
                                top: 0,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            insetPadding: EdgeInsets.only(bottom: 700),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: SizedBox(
                                              height: 130,
                                             
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      height: 1,
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        child: Text(
                                                          'Add to Project',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontFamily: 'f1'),
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        child: Text(
                                                          'Add Member',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontFamily: 'f1'),
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        child: Text(
                                                          'Delete Task',
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontFamily: 'f1'),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Icon(
                                    Icons.settings,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                                'Meeting according with design team in Central Park',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'f1',
                                )),
                            SizedBox(
                              height: 30,
                            ),
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
                                    Text('Assigned to',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'f1',
                                            color: Colors.grey)),
                                    Text(
                                      'Stepphen Chow',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'f1'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffE4E4E4),
                            ),
                            //duedate//
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.date_range,
                                        size: 30, color: Colors.grey),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Due Date',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'f1',
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Aug 5, 2018',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffE4E4E4),
                            ),
                            //decription//
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.content_copy,
                                        size: 30, color: Colors.grey),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Due Decription',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'f1',
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: 200,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing. ',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffE4E4E4),
                            ),
                            //Member//
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.reduce_capacity,
                                        size: 30, color: Colors.grey),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Members',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'f1',
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: 200,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.red),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.red),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.red),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                  height: 32,
                                                  width: 32,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red),
                                                  child: Center(
                                                    child: Text('...',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        )),
                                                  ))
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xffE4E4E4),
                            ),
                            //Tag//
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.add_link,
                                        size: 30, color: Colors.grey),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tag',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'f1',
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            width: 90,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey)),
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text('Personal',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'f1',
                                                      color: Colors.blue)),
                                            ))
                                      ],
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 33,
                            ),
                            //write comment//
                            Container(
                              height: 87,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(5)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Write a comment',
                                  ),
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5)),
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Stack(children: [
                                  Row(
                                    children: [
                                      Icon(Icons.add_photo_alternate,
                                          size: 30, color: Colors.grey),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.add_link,
                                          size: 30, color: Colors.grey),
                                    ],
                                  ),
                                  Positioned(
                                      right: 0,
                                      child: InkWell(
                                        child: Text(
                                          'Send',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.blue,
                                            fontFamily: 'f1',
                                          ),
                                        ),
                                      ))
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 36,
                            ),
                            Visibility(
                              visible: _isVisible,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Stepphen Chow',
                                            style: TextStyle(
                                                fontSize: 18, fontFamily: 'f1'),
                                          ),
                                          Text('3 days ago',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      'Lorem ipsum dolor sit amet,consectetur adipiscing.',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Stepphen Chow',
                                            style: TextStyle(
                                                fontSize: 18, fontFamily: 'f1'),
                                          ),
                                          Text('3 days ago',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                      child: Image.asset(
                                          'assets/images/Comment.png')),
                                ],
                              ),
                            ),
                            //Show comment//

                            //button complete//
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 48,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color(0xff6074F9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text('Complete Task',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'f1',
                                          color: Colors.white))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: hideshow,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Text('Comment',
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'f1',
                                          ))),
                                  Icon(
                                    Icons.unfold_more_outlined,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
