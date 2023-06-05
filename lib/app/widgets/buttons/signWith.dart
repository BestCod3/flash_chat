import 'package:flutter/material.dart';

class SignWith extends StatelessWidget {
  const SignWith({Key? key, required this.image}) : super(key: key);
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 1),
                    blurRadius: 2.0),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: image,
              // child: Image.network(
              //   'https://cdn-icons-png.flaticon.com/128/2991/2991148.png',
              // ),
            ),
          ),
        ),
        // SizedBox(
        //   width: 30,
        // ),
        // InkWell(
        //   child: Container(
        //     height: MediaQuery.of(context).size.height * 0.08,
        //     width: MediaQuery.of(context).size.width * 0.4,
        //     decoration: BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //             color: Colors.black54,
        //             offset: Offset(0, 1),
        //             blurRadius: 2.0),
        //       ],
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(7),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Image.network(
        //           "https://cdn-icons-png.flaticon.com/128/4494/4494475.png"),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
