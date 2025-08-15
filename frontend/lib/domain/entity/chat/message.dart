import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String chatId;
  final String messageId;
  final String userFrom;
  final String userTo;
  final bool isRead;
  final String content;
  final DateTime timestamp;

  Message({
    required this.chatId,
    required this.messageId,
    required this.userFrom,
    required this.userTo,
    required this.content,
    required this.timestamp,
    this.isRead = false,
  });

  @override
  List<Object?> get props => [chatId, messageId, userFrom, userTo, content, timestamp, isRead];

  Message copyWith(
      {String? chatId,
      String? messageId,
      String? userFrom,
      String? userTo,
      bool? isRead,
      String? content,
      DateTime? timestamp}) {
    return Message(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        userFrom: userFrom ?? this.userFrom,
        userTo: userTo ?? this.userTo,
        content: content ?? this.content,
        timestamp: timestamp ?? this.timestamp,
        isRead: isRead ?? this.isRead);
  }
}
