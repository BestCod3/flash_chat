import 'package:get/get.dart';

import '../modules/chatView/bindings/chat_view_binding.dart';
import '../modules/chatView/views/chat_view.dart';
import '../modules/landingView/bindings/landing_view_binding.dart';
import '../modules/landingView/views/landing_view.dart';
import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING_VIEW;

  static final routes = [
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.LANDING_VIEW,
      page: () => const LandingView(),
      binding: LandingViewBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_VIEW,
      page: () => ChatView(),
      binding: ChatViewBinding(),
    ),
  ];
}
