import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/LoginController.dart';
import 'package:mategram/Routes/AppRoute.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final LoginController controller = Get.put(LoginController());

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Textfield(
              hintText: "Email",
              controller: controller.username,
              obsqureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            Textfield(
              hintText: "Password",
              controller: controller.password,
              obsqureText: true,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Elevatedbutton(
                    text: "LOGIN",
                    backColor: Colors.purple,
                    foreColor: Colors.white,
                    onPressed: () {
                      Get.offAllNamed(AppRoute.home);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.forgotPassword);
              },
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.register);
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
