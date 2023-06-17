import 'package:flash_chat/app/modules/signUp/views/sign_up_view.dart';
import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/app/widgets/text/Or%20Sign.dart';
import 'package:flash_chat/app/widgets/textField/inputDecoration.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/buttons/signWith.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);
  final controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                  const Text('Welcome,',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    'Glad to see you!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  sizedBox,
                  TextField(
                    onChanged: (value) {
                      controller.email.value = value;
                    },
                    showCursor: true,
                    decoration:
                        registerDecoration.copyWith(hintText: "Email Address"),
                  ),
                  sizedBox,
                  TextField(
                    onChanged: (value) {
                      controller.password.value = value;
                    },
                    showCursor: true,
                    decoration:
                        registerDecoration.copyWith(hintText: "Password"),
                  ),
                  sizedBox,
                  RegisterWidget(
                      onTap: () {
                        controller.SignIn();
                      },
                      text: "Login"),
                  sizedBox,
                  OrSign(
                    text: "Or Login with",
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
                    text: "Don\'t have an account?   ",
                    text1: "Sing Up Now",
                    onTap: () {
                      Get.to(SignUpView());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
