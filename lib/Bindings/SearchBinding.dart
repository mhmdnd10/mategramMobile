import 'package:get/get.dart';
import 'package:mategram/Controllers/SearchController.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Searchcontroller());
  }
}
