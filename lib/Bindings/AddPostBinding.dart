import 'package:get/get.dart';
import 'package:mategram/Controllers/addPostController.dart';

class AddPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPostController());
  }
}
