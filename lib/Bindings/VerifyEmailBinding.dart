import 'package:get/get.dart';
import 'package:mategram/Controllers/VerifyEmailController.dart';

class VerifyEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyEmailController());
  }
}
