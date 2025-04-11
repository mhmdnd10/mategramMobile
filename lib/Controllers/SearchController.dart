import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mategram/services/dio_service.dart';

class Searchcontroller extends GetxController {
  TextEditingController search = TextEditingController();
  var users = [].obs;
  void searchUsers(String query) async {
    try {
      final dio = DioService().client;
      final response = await dio.get('/search/users', queryParameters: {
        'query': query,
      });

      users.value = response.data;
    } catch (e) {
      print("Search error: $e");
      Get.snackbar("Error", "Failed to search users");
    }
  }
}
