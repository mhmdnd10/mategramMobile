import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Controllers/addPostController.dart';

class AddPostView extends StatefulWidget {
  const AddPostView({super.key});

  @override
  State<AddPostView> createState() => _AddPostViewState();
}

final AddPostController controller = Get.put(AddPostController());

class _AddPostViewState extends State<AddPostView> {
  File? _image;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _image != null
                    ? Image.file(
                        _image!,
                        fit: BoxFit.cover,
                      )
                    : Icon(
                        Icons.add_a_photo,
                        color: Colors.grey[800],
                        size: 50,
                      ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLines: 5,
              controller: controller.description,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Caption',
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
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Elevatedbutton(
                    text: "Add Post",
                    backColor: Colors.red,
                    foreColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
