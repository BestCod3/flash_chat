import 'package:flutter/material.dart';

class OrSign extends StatelessWidget {
  const OrSign({Key? key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(
              color: Colors.white,
              height: 36,
              thickness: 1,
            )),
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Colors.white,
              height: 36,
              thickness: 1,
            )),
      ),
    ]);
  }
}
