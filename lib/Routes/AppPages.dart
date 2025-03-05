// ignore: file_names
import 'package:get/get.dart';
import 'package:mategram/Bindings/HomeBinding.dart';
import 'package:mategram/Bindings/LoginBinding.dart';
import 'package:mategram/Bindings/RegisterBinding.dart';
import 'package:mategram/Bindings/SearchBinding.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/Views/HomeView.dart';
import 'package:mategram/Views/LoginView.dart';
import 'package:mategram/Views/RegisterView.dart';
import 'package:mategram/Views/SearchView.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.register,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoute.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoute.search,
      page: () => SearchView(),
      binding: SearchBinding(),
    )
  ];
}
