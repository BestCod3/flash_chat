import 'package:get/get.dart';

import '../controllers/chat_view_controller.dart';

class ChatViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatViewController>(
      () => ChatViewController(),
    );
  }
}
