import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/services/dio_service.dart';

class RegisterController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  var isLoading = false.obs;
  var registerdEmail = ''.obs;
  void register() async {
    isLoading.value = true;
    final dio = DioService().client;
    final _name = name.text;
    final _email = email.text.trim();
    final _username = username.text.trim();
    final _password = password.text;
    final _confirmPassword = confirmPassword.text;

    try {
      final response = await dio.post('register', data: {
        'name': _name,
        'email': _email,
        'username': _username,
        'password': _password,
        'password_confirmation': _confirmPassword,
      });
      final token = response.data['token'];
      print(token);
      Get.defaultDialog(
        title: "Success",
        middleText: "Register Success",
        onConfirm: () {
          Get.toNamed(AppRoute.login);
        },
        textConfirm: "OK",
      );
      name.clear();
      username.clear();
      email.clear();
      password.clear();
      confirmPassword.clear();
      registerdEmail.value = _email;
      Get.toNamed(AppRoute.verifyEmail);
    } catch (e) {
      String errorMessage = "An unknown error occurred.";
      if (e is DioException) {
        if (e.response != null && e.response?.data != null) {
          var errorData = e.response?.data;

          if (errorData['errors'] != null) {
            List<String> errorMessages = [];
            errorData['errors'].forEach((key, messages) {
              errorMessages.add('$key: ${messages.join(', ')}');
            });
            errorMessage = errorMessages.join('\n');
          }
        }
      }
      Get.defaultDialog(
        title: "Register Failed",
        middleText: errorMessage,
        onConfirm: () {
          Get.back();
        },
        textConfirm: "OK",
      );
    }
  }
}
