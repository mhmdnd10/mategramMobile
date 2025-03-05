import 'package:get/get.dart';
import 'package:mategram/Bindings/LoginBinding.dart';
import 'package:mategram/Bindings/RegisterBinding.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/Views/LoginView.dart';
import 'package:mategram/Views/RegisterView.dart';

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
    )
  ];
}
