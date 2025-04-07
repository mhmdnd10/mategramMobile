import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mategram/Routes/AppRoute.dart';

class PostLayout extends StatefulWidget {
  const PostLayout({super.key});

  @override
  State<PostLayout> createState() => _PostLayoutState();
}

class _PostLayoutState extends State<PostLayout> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mhmd"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "2 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Description"),
            const SizedBox(
              height: 10,
            ),
            Image.asset("lib/images/Mategram design.png"),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text("10"),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.comment);
                  },
                  icon: Icon(
                    Icons.comment,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text("10"),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        );
      },
    );
  }
}
