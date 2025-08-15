part of 'chat_bloc.dart';

sealed class ChatEvent extends BaseBlocEvent {}

class ChatInitialEvent extends ChatEvent {
  final Chat? chat;

  ChatInitialEvent({required this.chat});
}

final class ChatTextTypingEvent extends ChatEvent {
  final String text;

  ChatTextTypingEvent(this.text);
}

final class ChatSendMessageEvent extends ChatEvent {
  final String text;

  ChatSendMessageEvent(this.text);
}

final class ChatAddMessageEvent extends ChatEvent {
  final Message message;

  ChatAddMessageEvent(this.message);
}

final class ChatMarkAllAsReadEvent extends ChatEvent {}


final class ChatBlockEvent extends ChatEvent {}