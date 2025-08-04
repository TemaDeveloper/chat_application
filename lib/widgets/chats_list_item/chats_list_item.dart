import 'package:chat_app/theme/styles/texts/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChatsListItem extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String avatarUrl;

  const ChatsListItem({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 30,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppTextStyles.robotoBody,
            ),
            const SizedBox(height: 5),
            Text(lastMessage, style: AppTextStyles.arialBody),
            const SizedBox(height: 5),
          ],
        )
      ],
    );
  }
}
