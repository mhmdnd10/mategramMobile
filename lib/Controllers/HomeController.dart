// ignore: file_names
import 'package:get/get.dart';
import 'package:mategram/Routes/AppRoute.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
    if (index == 0) {
      Get.offAllNamed(AppRoute.home);
    } else if (index == 1) {
      Get.toNamed(AppRoute.search);
    }
  }
}
