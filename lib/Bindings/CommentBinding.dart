import 'package:get/get.dart';
import 'package:mategram/Controllers/CommentController.dart';

class CommentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommentController());
  }
}
