import 'package:flutter/material.dart';

class MyPassField extends StatelessWidget {
  const MyPassField({
    super.key, required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: "Password",
          filled: true,
          fillColor: Colors.grey[300],
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          )
      ),
      validator: (value){
        if(value == "" || value == null){
          return "Password can't be empty";
        }
        return null;
      },
    );
  }
}