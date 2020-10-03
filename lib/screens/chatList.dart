import 'package:experiment/widgets/chatListItem.dart';
import 'package:experiment/widgets/chatlistAppBar.dart';
import 'package:experiment/widgets/chatlistSearchBar.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.blue,
        height: double.infinity,
        child: Column(children: [
          ChatListAppBar(),
          ChatListSearchBar(),
          ChatListItem(),
        ]),
      ),
    );
  }
}
