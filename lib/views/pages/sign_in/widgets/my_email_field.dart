import 'package:flutter/material.dart';

class MyEmailField extends StatelessWidget {
  const MyEmailField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: "E-mail",
          filled: true,
          fillColor: Colors.grey[300],
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10))),
      validator:  (value) {
      if (value == "" || value == null) {
        return "Email can't be empty";
      } else if (!(value.toString().contains(".") ||
          value.toString().contains("@"))) {
        return "Please enter valid email";
      }
      return null;
    },
    );
  }
}
