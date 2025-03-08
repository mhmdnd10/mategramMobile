import 'package:get/get.dart';
import 'package:mategram/Controllers/SendForgotPasswordController.dart';

class SendForgotPasswordCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendForgotPasswordCodeController());
  }
}
