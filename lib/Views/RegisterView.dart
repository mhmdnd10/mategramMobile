import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Components/TextField.dart';
import 'package:mategram/Controllers/RegisterController.dart';
import 'package:mategram/Routes/AppRoute.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

final RegisterController controller = Get.put(RegisterController());

class _RegisterViewState extends State<RegisterView> {
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
              "Welcome on Mategram",
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
              hintText: "Full Name",
              controller: controller.name,
              obsqureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            Textfield(
              hintText: "Email",
              controller: controller.email,
              obsqureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            Textfield(
              hintText: "Username",
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
            Textfield(
              hintText: "Confirm Password",
              controller: controller.confirmPassword,
              obsqureText: true,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Elevatedbutton(
                    text: "REGISTER",
                    backColor: Colors.purple,
                    foreColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.login);
                  },
                  child: Text(
                    "Login",
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
