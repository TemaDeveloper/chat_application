import 'package:auto_route/auto_route.dart';
import 'package:chat_app/domain/entity/user.dart';
import 'package:chat_app/widgets/chats_list_item/chats_list_item.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.separated(
      //   itemCount: users.length,
      //   padding: const EdgeInsets.all(8.0),
      //   itemBuilder: (BuildContext context, int index) {
      //     return ChatsListItem(
      //       name: users[index].name,
      //       lastMessage: users[index].lastMessage,
      //       avatarUrl: users[index].avatarUrl,
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) {
      //     return const Divider();
      //   },
      // ),
    );
  }
}
