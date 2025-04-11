// ignore: file_names
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mategram/Models/Post.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/services/dio_service.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  var posts = <Post>[].obs;
  var isLoading = false.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
    if (index == 0) {
      Get.offAllNamed(AppRoute.home);
    } else if (index == 1) {
      Get.toNamed(AppRoute.search);
    } else if (index == 2) {
      Get.toNamed(AppRoute.addPost);
    } else {
      Get.toNamed(AppRoute.profile);
    }
  }

  Future<void> fetchPosts() async {
    try {
      isLoading.value = true;
      final dio = DioService().client;
      final response = await dio.get('posts');
      print(response.data);
      final List<Post> loadedPosts = (response.data['data'] as List)
          .map((postJson) => Post.fromJson(postJson))
          .toList();

      posts.value = loadedPosts;
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Error",
        middleText: 'Error fetching posts!',
        textConfirm: "OK",
      );
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }
}
