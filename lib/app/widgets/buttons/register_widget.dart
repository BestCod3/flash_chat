import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key, required this.onTap}) : super(key: key);
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black54, offset: Offset(0, 1), blurRadius: 2.0),
          ], borderRadius: BorderRadius.circular(7), color: Colors.white),
          child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ));
  }
}
