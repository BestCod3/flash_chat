import 'package:flash_chat/app/modules/signIn/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/buttons/register_widget.dart';
import '../../../widgets/buttons/signWith.dart';
import '../../../widgets/text/Or Sign.dart';
import '../../../widgets/textField/inputDecoration.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      // extendBody: true,
      extendBodyBehindAppBar: true,

      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: const Text('SignUpView'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
            gradient: const LinearGradient(
                colors: [Color(0xffC1A2FF), Color(0xff94ACFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Create Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    'to get started now!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  sizedBox,
                  TextField(
                      onChanged: (value) {
                        controller.name.value = value;
                      },
                      showCursor: true,
                      decoration:
                          registerDecoration.copyWith(hintText: 'Name')),
                  sizedBox,
                  TextField(
                      onChanged: (value) {
                        controller.email.value = value;
                      },
                      showCursor: true,
                      decoration: registerDecoration.copyWith(
                          hintText: 'Email Address')),
                  sizedBox,
                  TextField(
                      onChanged: (value) {
                        controller.password.value = value;
                      },
                      showCursor: true,
                      decoration:
                          registerDecoration.copyWith(hintText: 'Password')),
                  sizedBox,
                  RegisterWidget(
                    onTap: () {
                      FocusNode();
                      controller.signUp();
                    },
                    text: "Sign Up",
                  ),
                  sizedBox,
                  OrSign(
                    text: "Or Sign Up with",
                    text1: "",
                    onTap: () {},
                  ),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SignWith(
                          image: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/2991/2991148.png")),
                      SignWith(
                          image: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/4494/4494475.png")),
                    ],
                  ),
                  sizedBox,
                  sizedBox,
                  OrSign(
                    text: "Already have an account?   ",
                    text1: "Login Now",
                    onTap: () {
                      Get.to(SignInView());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
