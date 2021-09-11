import 'package:flutter/material.dart';

class Titletext extends StatelessWidget {
  const Titletext({
    Key? key,
    required this.titlecontroller,
  }) : super(key: key);

  final TextEditingController titlecontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          height: 66,
          padding: EdgeInsets.all(10),
          color: Colors.grey.withOpacity(0.2),
          child: TextField(
          controller: titlecontroller,
            decoration: InputDecoration(
                hintText: 'Tittle',
                border: InputBorder.none,
                hintStyle: TextStyle(
                    color: Colors.black, fontSize: 18, fontFamily: 'f1')),
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
