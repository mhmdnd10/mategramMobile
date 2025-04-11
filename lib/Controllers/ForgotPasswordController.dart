import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/services/dio_service.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController email = TextEditingController();

  void sendResetLink() async {
    final dio = DioService().client;
    try {
      final response = await dio.post('forgot-password', data: {
        'email': email.text,
      });
      Get.defaultDialog(
        title: "Success",
        middleText: "Forgot email verification sent successfully",
        textConfirm: "ok",
        onConfirm: () {
          Get.toNamed(AppRoute.sendForgotPasswordCode, arguments: email.text);
        },
      );
      email.clear();
    } on DioException catch (e) {
      Get.defaultDialog(
        title: "Success",
        middleText: e.response?.data['message'] ?? 'Failed',
      );
    }
  }
}
