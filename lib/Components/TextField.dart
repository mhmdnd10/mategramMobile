import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.icon,
    this.inputType,
    required this.obsqureText,
  });
  String hintText;
  bool obsqureText;
  TextEditingController controller;
  Icon? icon;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      controller: controller,
      obscureText: obsqureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.purple),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
