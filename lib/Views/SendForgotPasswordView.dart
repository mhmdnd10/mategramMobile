import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/SendForgotPasswordController.dart';

class SendForgotPasswordView extends StatefulWidget {
  const SendForgotPasswordView({super.key});

  @override
  State<SendForgotPasswordView> createState() => _SendForgotPasswordViewState();
}

final SendForgotPasswordCodeController controller =
    Get.put(SendForgotPasswordCodeController());

final List<FocusNode> focusNodes = List.generate(
  6,
  (index) => FocusNode(),
);

class _SendForgotPasswordViewState extends State<SendForgotPasswordView> {
  String? email;
  @override
  void initState() {
    email = Get.arguments;
    print(email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (email == null) {
      return const Scaffold(
        body: Center(child: Text("No email provided")),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Code Verification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Textfield(
                  hintText: "token",
                  controller: controller.token,
                  obsqureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Textfield(
                  hintText: "new password",
                  controller: controller.password,
                  obsqureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Textfield(
                  hintText: "confirm password",
                  controller: controller.confirmPassword,
                  obsqureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                      child: Elevatedbutton(
                          text: "Verify Code",
                          backColor: Colors.red,
                          foreColor: Colors.white,
                          onPressed: () {
                            controller.resetPassword(email!);
                          })),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
