import 'dart:async';

import 'package:chat_app/base/bloc/base_bloc_impl.dart';
import 'package:chat_app/domain/entity/chat/chat.dart';
import 'package:chat_app/domain/entity/chat/message.dart';
import 'package:chat_app/domain/entity/snacbar_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'chat_event.dart';
part 'chat_navigation.dart';
part 'chat_state.dart';

// @injectable
// final class ChatBloc extends BaseBlocImpl<ChatEvent, ChatState> {
//   final FetchMessagesUseCase _fetchMessagesUseCase;
//   final SendMessageUseCase _sendMessageUseCase;
//   final MarkAllMessageAsReadUseCase _markAllMessageAsReadUseCase;

//   final BlockUserUseCase _blockUserUseCase;

//   final WebSocketBloc _webSocketBloc;
//   StreamSubscription? _streamSubscription;

//   ChatBloc(
//     this._fetchMessagesUseCase,
//     this._sendMessageUseCase,
//     this._blockUserUseCase,
//     this._webSocketBloc,
//     this._markAllMessageAsReadUseCase,
//   ) : super(ChatState());

//   @override
//   handleEvent(ChatEvent event, Emitter<ChatState> emit) async {
//     switch (event) {
//       case ChatInitialEvent():
//         await _handleChatInitialEvent(event, emit);
//       case ChatTextTypingEvent():
//         _handleChatTextTypingEvent(event, emit);
//       case ChatSendMessageEvent():
//         await _handleChatSentTextEvent(event, emit);
//       case ChatAddMessageEvent():
//         await _handleChatAddMessageEvent(event, emit);
//       case ChatMarkAllAsReadEvent():
//         _handleChatMarkAllAsReadEvent(event, emit);
//       case ChatBlockEvent():
//         await _handleChatBlockEvent(event, emit);
//     }
//   }

//   Future<void> _handleChatInitialEvent(
//     ChatInitialEvent event,
//     Emitter<ChatState> emit,
//   ) async {
//     emit(state.copyWith(
//       chat: event.chat,
//     ));
//     if (state.chat != null) {
//       final messagesResponse = await _fetchMessagesUseCase(event.chat!.companionId);
//       if (messagesResponse.isSuccess()) {
//         emit(state.copyWith(
//           messages: messagesResponse.data!.reversed.toList(),
//           status: BaseBlocStatus.success,
//         ));
//       }
//       _initWebSocketListener();
//       _markAllMessageAsReadUseCase(state.companionId);
//     } 
//   }

//   void _initWebSocketListener() {
//     _streamSubscription ??= _webSocketBloc.state.websocketStream?.listen(
//       (event) => handleWebSocketEvent(event),
//     );
//   }

//   void handleWebSocketEvent(BaseEvent event) {
//     switch (event.type) {
//       case WebSocketEventType.chat:
//         switch (event.content.type) {
//           case WebSocketEventType.message:
//             add(ChatAddMessageEvent(Message.fromJson(event.content.data)));
//           case WebSocketEventType.markAllAsReadConfirmation:
//             add(ChatMarkAllAsReadEvent());
//         }
//         return;
//     }
//   }

//   void _handleChatTextTypingEvent(ChatTextTypingEvent event, Emitter<ChatState> emit) {}

//   Future<void> _handleChatSentTextEvent(ChatSendMessageEvent event, Emitter<ChatState> emit) async {
//     final sendMessageResponse = await _sendMessageUseCase.call(MessageSend(
//       userTo: state.companionId,
//       text: event.text,
//     ));
//   }

//   Future<void> _handleChatAddMessageEvent(
//     ChatAddMessageEvent event,
//     Emitter<ChatState> emit,
//   ) async {
//     final messages = List.of(state.messages);
//     messages.insert(0, event.message);
//     emit(state.copyWith(messages: messages));
//     if (!event.message.isMe(state.companionId)) _markAllMessageAsReadUseCase(state.companionId);
//   }

//   void _handleChatMarkAllAsReadEvent(ChatMarkAllAsReadEvent event, Emitter<ChatState> emit) {
//     final newMessages =
//         List.of(state.messages).map((message) => message.copyWith(isRead: true)).toList();
//     emit(state.copyWith(messages: newMessages));
//   }


//   Future<void> _handleChatBlockEvent(ChatBlockEvent event, Emitter<ChatState> emit) async {
//     final blockResponse = await _blockUserUseCase.call(state.companionId);
//   }

//   @override
//   Future<void> close() {
//     _streamSubscription?.cancel();
//     return super.close();
//   }
// }
