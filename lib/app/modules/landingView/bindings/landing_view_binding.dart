import 'package:get/get.dart';

import '../controllers/landing_view_controller.dart';

class LandingViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingViewController>(
      () => LandingViewController(),
    );
  }
}
