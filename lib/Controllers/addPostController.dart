import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:mategram/services/dio_service.dart';

class AddPostController extends GetxController {
  TextEditingController description = TextEditingController();
  var isLoading = false.obs;

  Future<void> uploadPost(File? imageFile) async {
    if (imageFile == null && description.text.trim().isEmpty) {
      Get.snackbar("Error", "Please add an image or write a caption");
      return;
    }

    try {
      isLoading.value = true;

      final dioclient = DioService().client;

      final formData = dio.FormData.fromMap({
        if (description.text.isNotEmpty) 'description': description.text,
        if (imageFile != null)
          'media_url': await dio.MultipartFile.fromFile(
            imageFile.path,
            filename: imageFile.path.split('/').last,
          ),
      });

      final response = await dioclient.post(
        'posts',
        data: formData,
      );

      if (response.statusCode == 201) {
        Get.back();
        Get.snackbar("Success", "Post uploaded successfully");
        description.clear();
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to upload post: ${e.toString()}");
    } finally {
      isLoading.value = false;
    }
  }
}
