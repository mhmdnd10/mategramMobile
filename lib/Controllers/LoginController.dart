import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mategram/Routes/AppRoute.dart';
import '../../services/dio_service.dart';

class LoginController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    isLoading.value = true;
    final dio = DioService().client;
    final _username = username.text.trim();
    final _password = password.text;
    try {
      final response = await dio.post('login', data: {
        'username': _username,
        'password': _password,
      });

      final token = response.data['token'];
      print(token.toString());
      final storage = GetStorage();
      await storage.write('token', token);
      Get.defaultDialog(
        title: "Success",
        middleText: "Login Success",
        onConfirm: () {
          Get.offAllNamed(AppRoute.home);
        },
        textConfirm: "OK",
      );
      username.clear();
      password.clear();
    } on DioException catch (e) {
      if (e.response?.statusCode == 403 &&
          e.response?.data['message'] == 'Email not verified.') {
        Get.defaultDialog(
          title: "Email not verified",
          middleText: "Please verify your email",
          onConfirm: () {
            Get.toNamed(
              AppRoute.verifyEmail,
              // arguments: e.response?.data['email']
            );
          },
          textConfirm: "OK",
        );
      } else if (e.response?.statusCode == 401) {
        Get.defaultDialog(
          title: "Login Failed",
          middleText: "Invalid credentials",
        );
      } else {
        Get.defaultDialog(
          title: "Error",
          middleText: "Something went wrong",
        );
      }
    } finally {
      isLoading.value = false;
    }
  }
}
