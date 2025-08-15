part of 'chat_bloc.dart';
final class ChatState extends BaseBlocState<ChatState, BaseBlocStatus> {
  ChatState({
    this.status = BaseBlocStatus.loading,
    this.messages = const [],
    this.doNavigation,
    this.snackbarData,
    this.chat,
  });

  final BaseBlocStatus status;
  final Chat? chat;
  final List<Message> messages;
  final SnackbarData? snackbarData;
  final ChatNavigation? doNavigation;

  String get avatarUrl => chat?.user.userAvatar ?? '';
  String get name => chat?.user.name ?? '';
  String get companionId => chat?.companionId ?? '';
  bool isMe(String id) => chat?.companionId != id;

  @override
  List<Object?> get props => [
        status,
        chat,
        messages,
        snackbarData,
        doNavigation,
      ];

  @override
  ChatState copyWith({
    BaseBlocStatus? status,
    Chat? chat,
    List<Message>? messages,
    SnackbarData? snackbarData,
    ChatNavigation? doNavigation,
  }) {
    return ChatState(
      status: status ?? this.status,
      chat: chat ?? this.chat,
      messages: messages ?? this.messages,
      snackbarData: snackbarData,
      doNavigation: doNavigation,
    );
  }
}
