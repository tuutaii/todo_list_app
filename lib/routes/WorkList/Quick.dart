import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quick extends StatefulWidget {
  const Quick({Key? key}) : super(key: key);

  @override
  _QuickState createState() => _QuickState();
}

class _QuickState extends State<Quick> {
  List<int> selectedList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Quick Notes',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 94,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: Offset(10, 10),
                                blurRadius: 4,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 3, width: 121, color: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Text(
                                'Meeting with Jessica in Central Park at PM',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 94,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: Offset(10, 10),
                                blurRadius: 4,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 3, width: 121, color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Text(
                                'Replace dashboard icon with more colorfull ones',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: Offset(10, 10),
                                blurRadius: 4,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 3, width: 121, color: Colors.green),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Column(
                                children: [
                                  Text(
                                    'Home work today',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 0.7,
                                  child: Checkbox(
                                    onChanged: (value) {
                                      setState(() {
                                        if (value == true) {
                                          selectedList.add(2);
                                        } else {
                                          selectedList.remove(2);
                                        }
                                      });
                                    },
                                    value: selectedList.contains(2),
                                  ),
                                ),
                                Text(
                                  'Buy a milk',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 0.7,
                                  child: Checkbox(
                                    onChanged: (value) {
                                      setState(() {
                                        if (value == true) {
                                          selectedList.add(1);
                                        } else {
                                          selectedList.remove(1);
                                        }
                                      });
                                    },
                                    value: selectedList.contains(1),
                                  ),
                                ),
                                Text(
                                  'Buy a shampoo',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 94,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: Offset(10, 10),
                                blurRadius: 4,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 3, width: 121, color: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Text(
                                'Replace dashboard icon with more colorfull ones',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 94,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: Offset(10, 10),
                                blurRadius: 4,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 3, width: 121, color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Text(
                                'Meeting with Jessica in Central Park at PM',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 94,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: Offset(10, 10),
                                blurRadius: 4,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 3, width: 121, color: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Text(
                                'Replace dashboard icon with more colorfull ones',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
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
          )
        ],
      ),
    );
  }
}
