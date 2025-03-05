import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Routes/AppPages.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/Views/RegisterView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoute.register,
      getPages: AppPages.pages,
      home: const RegisterView(),
    );
  }
}
