import 'package:flash_chat/app/models/user_models.dart';
import 'package:flash_chat/app/modules/chatView/services/chatService.dart';
import 'package:flash_chat/app/widgets/messages/stream_messages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/messages/send_messages.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StreamMessages(chatStream: ChatService.getStreamMessages()),
          // UserWidget(userModel: userModel, width: width, theme: theme),
          SendMessages(
              chatController: chatController.smsController,
              onPressed: () async => chatController.sendMessages()),
        ],
      ),
    );
  }
}
