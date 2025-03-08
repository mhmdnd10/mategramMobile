import 'package:flutter/material.dart';

class TagBarView extends StatelessWidget {
  const TagBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(),
            child: Image.asset("lib/images/Mategram design.png"),
          ),
        );
      },
    );
  }
}
