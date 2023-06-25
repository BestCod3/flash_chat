import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../models/user_models.dart';

class ChatService {
  static Future<void> sendMessages(String sms) async {
    final sender = FirebaseAuth.instance.currentUser;

    if (sender != null) {
      final _userModel = UserModel(
        sender: sender.email!,
        sms: sms.toString(),
        dateTime: DateTime.now(),
      );
      final _chats = FirebaseFirestore.instance.collection('chats');
      await _chats.add(_userModel.toMap());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getStreamMessages() {
    return FirebaseFirestore.instance
        .collection('chats')
        .orderBy('dateTime', descending: true)
        .snapshots();
  }
}
