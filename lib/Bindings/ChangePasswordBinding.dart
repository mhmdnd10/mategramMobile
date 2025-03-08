import 'package:get/get.dart';
import 'package:mategram/Controllers/ChangePasswordController.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}
