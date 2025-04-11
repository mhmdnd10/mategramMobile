import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textfield extends StatelessWidget {
  Textfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.icon,
    this.inputType,
    required this.obsqureText,
    this.onPressed,
    this.onChanged,
  });
  String hintText;
  bool obsqureText;
  TextEditingController controller;
  IconData? icon;
  TextInputType? inputType;
  VoidCallback? onPressed;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: inputType,
      controller: controller,
      obscureText: obsqureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: onPressed, icon: Icon(icon)),
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
