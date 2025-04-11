import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/services/dio_service.dart';

class SendForgotPasswordCodeController extends GetxController {
  TextEditingController token = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void resetPassword(String email) async {
    final dio = DioService().client;
    try {
      print(email);
      print(token.text);
      print(password.text);
      final response = await dio.post('reset-password', data: {
        'email': email,
        'token': token.text,
        'password': password.text,
        'password_confirmation': confirmPassword.text,
      });

      Get.snackbar('Success', response.data['message']);
      Get.offAllNamed(AppRoute.login);
      token.clear();
      password.clear();
      confirmPassword.clear();
    } catch (e) {
      Get.snackbar('Error', 'Invalid code or error occurred');
    }
  }
}
