import 'package:flutter/material.dart';


class CheckItem extends StatelessWidget {
  const CheckItem({
    Key? key,
    required this.index,
    required this.controller,
  }) : super(key: key);

  final int index;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: Color(0xFF979797),
              ),
            ),
          ),
          SizedBox(width: 14),
          Container(
            width: size.width * .4,
            height: 40,
            child: TextFormField(
              controller: controller,
              validator: (val) =>
                  val!.isNotEmpty ? null : "Please enter list item",
              decoration: InputDecoration(
                hintText: "List Item${index + 1}",
                hintStyle: TextStyle(    
                  color: Colors.black  
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
