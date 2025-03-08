import 'package:get/get.dart';
import 'package:mategram/Controllers/EditProfileController.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileController());
  }
}
