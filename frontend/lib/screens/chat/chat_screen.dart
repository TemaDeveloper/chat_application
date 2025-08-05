import 'package:auto_route/auto_route.dart';
import 'package:chat_app/l10n/app_localizations.dart';
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
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus(); 
              },
              child: Align(
                alignment: Alignment.topCenter,
                
                  //builder: (context, controller, child) {
                    //final chatList = controller.chatList.reversed.toList();
                    // child: ListView.separated(
                    //   shrinkWrap: true,
                    //   reverse: false,
                    //   padding: const EdgeInsets.only(top: 12, bottom: 20) +
                    //       const EdgeInsets.symmetric(horizontal: 12),
                    //   separatorBuilder: (_, __) => const SizedBox(
                    //     height: 12,
                    //   ),
                      //controller:
                         
                      //itemCount: chatList.length,
                      //itemBuilder: (context, index) {
                      //  return Bubble(chat: chatList[index]);
                     // },
                   // )
                 // },
                
              ),
            ),
          ),
          // Added a text input field to send messages.
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
                    //Send the message
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