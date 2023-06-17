import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/modules/chatView/views/chat_view.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  Rx<String> email = "".obs;

  Rx<String> password = "".obs;
  Future<void> SignIn() async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.value, password: password.value)
          .then((value) => Get.to(ChatView()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
