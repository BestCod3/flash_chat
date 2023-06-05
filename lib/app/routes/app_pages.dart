import 'package:flash_chat/app/modules/signUp/views/sign_up_view.dart';
import 'package:get/get.dart';

import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_UP;

  static final routes = [
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
