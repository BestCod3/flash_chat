import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/models/user_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/chatService.dart';

class ChatViewController extends GetxController {
  // RxString sms = ''.obs;
  TextEditingController smsController = TextEditingController();

  Future<void> sendMessages() async {
    final sms = smsController.text.trim();
    if (sms != '') {
      await ChatService.sendMessages(sms);
    }

    smsController.clear();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getStreamMessages() {
    return ChatService.getStreamMessages();
  }
}
