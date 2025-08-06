import 'package:auto_route/auto_route.dart';
import 'package:chat_app/l10n/app_localizations.dart';
import 'package:chat_app/screens/chat/chat_stream.dart';
import 'package:chat_app/theme/styles/texts/app_text_styles.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'ChatRoute')
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
        title: Text("Name", style: AppTextStyles.robotoTitle),
      ),
      body: Column(
        children: [
          const ChatStream(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.hintInputMessaging,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _textController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}