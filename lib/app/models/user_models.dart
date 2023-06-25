class UserModel {
  final String sender;
  final String sms;
  final DateTime dateTime;
  bool? isMe;

  UserModel(
      {required this.sender,
      required this.sms,
      required this.dateTime,
      this.isMe});
  Map<String, dynamic> toMap() {
    return {
      'sender': sender,
      'sms': sms,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'isMe': isMe,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        sender: map['sender'],
        sms: map['sms'],
        dateTime: map['dateTime'],
        isMe: map['isMe']);
  }
}
