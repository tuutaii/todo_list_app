import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  final String pass;
  final TextEditingController controller;
  const PasswordFieldWidget(
      {Key? key, required this.pass, required this.controller})
      : super(key: key);

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: _isObscure,
        controller: widget.controller,
        style: const TextStyle(fontSize: 19, color: Color(0xFF0D1F3C)),
        decoration: InputDecoration(
          hintText: widget.pass,
          hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure == false
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: const Color(0xFFB5BBC9),
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ));
  }
}
