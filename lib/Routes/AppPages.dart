// ignore: file_names
import 'package:get/get.dart';
import 'package:mategram/Bindings/ChangePasswordBinding.dart';
import 'package:mategram/Bindings/EditProfileBinding.dart';
import 'package:mategram/Bindings/ForgotPasswordBinding.dart';
import 'package:mategram/Bindings/HomeBinding.dart';
import 'package:mategram/Bindings/LoginBinding.dart';
import 'package:mategram/Bindings/RegisterBinding.dart';
import 'package:mategram/Bindings/SearchBinding.dart';
import 'package:mategram/Bindings/SendForgotPasswordBinding.dart';
import 'package:mategram/Routes/AppRoute.dart';
import 'package:mategram/Views/AddPostView.dart';
import 'package:mategram/Views/ChangePasswordView.dart';
import 'package:mategram/Views/EditProfileView.dart';
import 'package:mategram/Views/ForgotPasswordView.dart';
import 'package:mategram/Views/HomeView.dart';
import 'package:mategram/Views/LoginView.dart';
import 'package:mategram/Views/NotificationView.dart';
import 'package:mategram/Views/ProfileView.dart';
import 'package:mategram/Views/RegisterView.dart';
import 'package:mategram/Views/SearchView.dart';
import 'package:mategram/Views/SendForgotPasswordView.dart';

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
    ),
    GetPage(
      name: AppRoute.addPost,
      page: () => AddPostView(),
    ),
    GetPage(
      name: AppRoute.profile,
      page: () => ProfileView(),
    ),
    GetPage(
      name: AppRoute.editProfile,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: AppRoute.changePassword,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: AppRoute.notification,
      page: () => NotificationView(),
    ),
    GetPage(
      name: AppRoute.forgotPassword,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: AppRoute.sendForgotPasswordCode,
      page: () => SendForgotPasswordView(),
      binding: SendForgotPasswordCodeBinding(),
    )
  ];
}
