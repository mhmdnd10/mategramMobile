import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/EditProfileController.dart';
import 'package:mategram/Routes/AppRoute.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

final EditProfileController controller = Get.put(EditProfileController());

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Textfield(
                hintText: "mhmd nd",
                controller: controller.name,
                obsqureText: false),
            SizedBox(height: 20),
            Textfield(
                hintText: "mhmdnd",
                controller: controller.username,
                obsqureText: false),
            SizedBox(height: 20),
            Textfield(
                hintText: "m@gmail.com",
                controller: controller.email,
                obsqureText: false),
            SizedBox(height: 20),
            TextField(
              controller: controller.bio,
              maxLines: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Bio",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
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
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.changePassword);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Change Password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Elevatedbutton(
                    text: "Edit Profile",
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
