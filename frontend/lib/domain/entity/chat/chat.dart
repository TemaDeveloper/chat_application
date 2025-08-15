import 'package:chat_app/domain/entity/chat/message.dart';
import 'package:chat_app/domain/entity/user.dart';
import 'package:equatable/equatable.dart';

class Chat extends Equatable{

  final String chatId;
  final Message? lastMessage;
  final User user;
  final DateTime createdAt;
  final int unreadCount;
  final String companionId;

  Chat({required this.chatId, required this.companionId, required this.createdAt, this.lastMessage, required this.unreadCount, required this.user});

  Chat copyWith({
    String? chatId, 
    Message? lastMessage, 
    User? user, 
    DateTime? createdAt, 
    int? unreadCount, 
    String? companionId,
  }){
    return Chat(
      chatId: chatId ?? this.chatId,
      createdAt: createdAt ?? this.createdAt,
      lastMessage: lastMessage ?? this.lastMessage,
      user: user ?? this.user,
      unreadCount: unreadCount ?? this.unreadCount,
      companionId: companionId ?? this.companionId
    );
  }

  @override
  List<Object?> get props => [chatId, lastMessage, user, createdAt, unreadCount, companionId];

}