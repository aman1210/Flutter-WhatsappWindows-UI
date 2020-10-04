import 'package:experiment/widgets/chatScreenMsgBox.dart';
import 'package:experiment/widgets/chatlistAppBar.dart';
import 'package:experiment/widgets/mainChatAppBar.dart';
import 'package:flutter/material.dart';

class MainChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            MainChatAppBar(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fitWidth)),
              ),
            ),
            ChatScreenMsgBox(),
          ],
        ),
      ),
    );
  }
}
