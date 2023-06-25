import 'package:flutter/material.dart';

class SendMessages extends StatelessWidget {
  const SendMessages(
      {super.key, required this.chatController, required this.onPressed});
  final Function() onPressed;
  final TextEditingController chatController;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Expanded(
          child: TextField(
            controller: chatController,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.send),
        ),
      ],
    ));
  }
}
