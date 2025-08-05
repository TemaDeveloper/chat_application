import 'package:flutter/material.dart';
import 'package:chat_app/entities/chat.dart';

class Bubble extends StatelessWidget {
  final Chat chat;
  const Bubble({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    final bool isMe = chat.sender == "Me";
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue[300] : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: isMe ? const Radius.circular(16) : const Radius.circular(4),
            bottomRight: isMe ? const Radius.circular(4) : const Radius.circular(16),
          ),
        ),
        child: Text(chat.message),
      ),
    );
  }
}