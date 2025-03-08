import 'package:get/get.dart';
import 'package:mategram/Controllers/ForgotPasswordController.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
