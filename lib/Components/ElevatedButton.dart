import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Elevatedbutton extends StatelessWidget {
  Elevatedbutton(
      {super.key,
      required this.text,
      required this.backColor,
      required this.foreColor,
      required this.onPressed});
  String text;
  Color backColor;
  Color foreColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backColor,
        foregroundColor: foreColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
