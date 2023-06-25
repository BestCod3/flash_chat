import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/models/user_models.dart';
import 'package:flash_chat/app/modules/chatView/views/chat_view.dart';
import 'package:flutter/material.dart';

class StreamMessages extends StatelessWidget {
  const StreamMessages({Key? key, required this.chatStream});
  final Stream<QuerySnapshot<Map<String, dynamic>>> chatStream;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: chatStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            final user = (snapshot.data!.docs.reversed as Iterable).map(
              (e) => UserModel.fromMap(e.data())
                ..isMe = e.data()['sender'] ==
                    FirebaseAuth.instance.currentUser?.email,
            );

            return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: user
                    .map(
                      (e) => UserWidget(userModel: e),
                    )
                    .toList());
          } else {
            return CircularProgressIndicator(
              color: Colors.white,
            );
          }
        });
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.userModel,
  });

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
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
