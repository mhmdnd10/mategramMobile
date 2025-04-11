import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mategram/Controllers/RegisterController.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/services/dio_service.dart';

class VerifyEmailController extends GetxController {
  TextEditingController index1 = TextEditingController();
  TextEditingController index2 = TextEditingController();
  TextEditingController index3 = TextEditingController();
  TextEditingController index4 = TextEditingController();
  TextEditingController index5 = TextEditingController();
  TextEditingController index6 = TextEditingController();

  var isLoading = false.obs;
  void verifyEmail() async {
    final code = index1.text +
        index2.text +
        index3.text +
        index4.text +
        index5.text +
        index6.text;
    final email = Get.find<RegisterController>().registerdEmail.value;
    if (code.length != 6) {
      Get.defaultDialog(
        title: "Error",
        middleText: "Please enter the 6-digit code.",
        textConfirm: "OK",
        onConfirm: () => Get.back(),
      );
      return;
    }

    try {
      isLoading.value = true;
      final dio = DioService().client;
      final response = await dio.post('verify-email', data: {
        'email': email,
        'code': code,
      });

      Get.defaultDialog(
        title: "Success",
        middleText: "Email Verified Successfully!",
        textConfirm: "OK",
        onConfirm: () {
          Get.offAllNamed(AppRoute.home);
        },
      );
      index1.clear();
      index2.clear();
      index3.clear();
      index4.clear();
      index5.clear();
      index6.clear();
    } catch (e) {
      Get.defaultDialog(
        title: "Verification Failed",
        middleText: "Invalid code or something went wrong.",
        textConfirm: "OK",
        onConfirm: () => Get.back(),
      );
    } finally {
      isLoading.value = false;
    }
  }
}
