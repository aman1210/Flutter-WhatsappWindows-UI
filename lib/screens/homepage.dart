import 'package:experiment/screens/chatList.dart';
import 'package:experiment/screens/mainChat.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isChatOpened = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // print(size.width);
    var contactWidth =
        size.width <= 1024 ? size.width * 0.35 : size.width * 0.3;
    var chatWidth =
        size.width <= 1024 ? size.width * (1 - 0.35) : size.width * (1 - 0.3);
    return Scaffold(
      body: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.grey[300]))),
            height: double.infinity,
            width: contactWidth,
            // color: Colors.blue,
            child: ChatList(),
          ),
          Container(
            height: double.infinity,
            width: chatWidth,
            color: Colors.grey[900],
            child: MainChat(),
          )
        ],
      ),
    );
  }
}
