import 'package:chat_app/widgets/chats_list_item/message_bubble.dart';
import 'package:flutter/material.dart';

class ChatStream extends StatelessWidget {
  const ChatStream({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dummyMessages = [
      {'text': 'Hello!', 'sender': 'userA'},
      {'text': 'Hi there!', 'sender': 'userB'},
      {'text': 'How are you?', 'sender': 'userA'},
    ];

    const String currentUser = 'userA';

    return Expanded(
      child: ListView.builder(
        reverse: true,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        itemCount: dummyMessages.length,
        itemBuilder: (context, index) {
          final message = dummyMessages[index];
          final String msgText = message['text'];
          final String msgSender = message['sender'];

          return MessageBubble(
            msgText: msgText,
            msgSender: msgSender,
            user: currentUser == msgSender,
          );
        },
      ),
    );
  }
}