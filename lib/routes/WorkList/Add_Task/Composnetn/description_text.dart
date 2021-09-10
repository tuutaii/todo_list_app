import 'package:flutter/material.dart';

class Descriptiontext extends StatelessWidget {
  const Descriptiontext({
    Key? key,
    required this.textcontroller,
  }) : super(key: key);

  final TextEditingController textcontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5), topLeft: Radius.circular(5)),
              border: Border.all(color: Colors.grey.withOpacity(0.5))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: textcontroller,
              maxLines: 6,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add description here',
              ),
              style: TextStyle(
                fontSize: 18,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
