import 'package:flutter/material.dart';

class VideoTabView extends StatelessWidget {
  const VideoTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(),
            child: Image.asset("lib/images/Mategram design.png"),
          ),
        );
      },
    );
  }
}
