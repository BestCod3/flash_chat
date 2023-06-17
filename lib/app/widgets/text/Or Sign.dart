import 'package:flash_chat/app/modules/signIn/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrSign extends StatelessWidget {
  const OrSign(
      {Key? key, required this.text, required this.text1, required this.onTap});
  final String text;
  final String text1;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: const Divider(
              color: Colors.white,
              height: 36,
              thickness: 1,
            )),
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          text1,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: const Divider(
              color: Colors.white,
              height: 36,
              thickness: 1,
            )),
      ),
    ]);
  }
}
