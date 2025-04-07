import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/CommentController.dart';

class CommentView extends StatefulWidget {
  const CommentView({super.key});

  @override
  State<CommentView> createState() => _CommentViewState();
}

final CommentController controller = Get.put(CommentController());

class _CommentViewState extends State<CommentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                      ),
                      title: Text("Wow!!"),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Textfield(
                    hintText: "Type anything...",
                    controller: controller.content,
                    obsqureText: false,
                    icon: Icons.send,
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
