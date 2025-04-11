import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mategram/Routes/AppRoute.dart';

class PostLayout extends StatelessWidget {
  final List posts;
  const PostLayout({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        final imageUrl = post.media_url.isNotEmpty
            ? "http://192.168.1.10/storage/${post.media_url}"
            : null;
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
                    Text(post.user_id),
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
            Text(post.description),
            const SizedBox(
              height: 10,
            ),
            if (imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Text("Error loading media");
                  },
                ),
              ),
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
