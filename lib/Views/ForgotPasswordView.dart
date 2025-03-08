import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/ForgotPasswordController.dart';
import 'package:mategram/Routes/AppRoute.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

final ForgotPasswordController controller = Get.put(ForgotPasswordController());

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Forgot Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Enter your email address to send you verification code",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            Textfield(
                hintText: "Emil address",
                controller: controller.email,
                obsqureText: false),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Elevatedbutton(
                    text: "Send Email",
                    backColor: Colors.red,
                    foreColor: Colors.white,
                    onPressed: () {
                      Get.toNamed(AppRoute.sendForgotPasswordCode);
                    },
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
