import 'package:flutter/material.dart';

class Elevatedbutton extends StatelessWidget {
  Elevatedbutton({
    super.key,
    required this.text,
    required this.backColor,
    required this.foreColor,
  });
  String text;
  Color backColor;
  Color foreColor;
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
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
