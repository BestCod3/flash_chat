import 'package:flash_chat/app/modules/signIn/views/sign_in_view.dart';
import 'package:flash_chat/app/modules/signUp/views/sign_up_view.dart';
import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/app/widgets/text/Or%20Sign.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/landing_view_controller.dart';

class LandingView extends GetView<LandingViewController> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegisterWidget(
                    onTap: () {
                      Get.to(SignInView());
                    },
                    text: "Login"),
                sizedBox,
                RegisterWidget(
                    onTap: () {
                      Get.to(SignUpView());
                    },
                    text: "Sign Up"),
                sizedBox,
                sizedBox,
                sizedBox,
                OrSign(
                  text: "Continue as a  quest",
                  text1: "",
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
