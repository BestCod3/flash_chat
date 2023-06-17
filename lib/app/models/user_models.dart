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
}
