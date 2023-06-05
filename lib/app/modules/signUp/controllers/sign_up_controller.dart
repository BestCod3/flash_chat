import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  Rx<String> email = "".obs;
  Rx<String> name = "".obs;
  Rx<String> password = "".obs;

  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
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
