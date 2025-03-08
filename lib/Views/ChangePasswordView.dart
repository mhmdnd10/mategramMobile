import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/ChangePasswordController.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

final ChangePasswordController controller = Get.put(ChangePasswordController());

class _ChangePasswordViewState extends State<ChangePasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Textfield(
                hintText: "old password",
                controller: controller.oldPassword,
                obsqureText: true),
            SizedBox(height: 20),
            Textfield(
                hintText: "new password",
                controller: controller.newPassword,
                obsqureText: true),
            SizedBox(height: 20),
            Textfield(
                hintText: "confirm password",
                controller: controller.confirmPassword,
                obsqureText: true),
            SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: Elevatedbutton(
                    text: "Change Password",
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
