import 'package:flash_chat/app/models/user_models.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_view_controller.dart';

class ChatView extends StatelessWidget {
  ChatView({Key? key}) : super(key: key);
  final chatController = Get.put<ChatViewController>(ChatViewController());
  TextEditingController controller = TextEditingController();
  UserModel userModel = UserModel(
      sender: "Erbol", sms: "Salam", dateTime: DateTime.now(), isMe: false);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatViewView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          UserWidget(userModel: userModel, width: width, theme: theme),
          Container(
              child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: chatController.smsController,
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.userModel,
    required this.width,
    required this.theme,
  });

  final UserModel userModel;
  final double width;
  final ColorScheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        !userModel.isMe! ? 10 : width / 4,
        7,
        userModel.isMe! ? 10 : width / 4,
        7,
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(25),
            bottomRight: const Radius.circular(25),
            topLeft: userModel.isMe!
                ? const Radius.circular(25)
                : const Radius.circular(0),
            topRight: !userModel.isMe!
                ? const Radius.circular(25)
                : const Radius.circular(0),
          ),
        ),
        elevation: 8.0,
        shadowColor: Colors.black,
        color: userModel.isMe! ? theme.primary : theme.onPrimaryContainer,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !userModel.isMe!
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          userModel.sender,
                          style: TextStyle(
                            color: theme.primary,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
              Text(
                userModel.sms,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.4,
                  color: userModel.isMe! ? Colors.white : null,
                ),
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                      fontSize: 16,
                      color: userModel.isMe! ? Colors.white : null,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
