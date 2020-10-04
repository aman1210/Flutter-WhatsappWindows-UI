import 'package:flutter/material.dart';

class MainChatAppBar extends StatelessWidget {
  Padding rightIcons(Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    var userInfo = Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CircleAvatar(
            child: Icon(Icons.person),
            backgroundColor: Colors.grey[300],
          ),
        ),
        Text(
          'Person',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
    var icons = Row(
      children: [
        rightIcons(Icon(Icons.search)),
        rightIcons(Icon(Icons.menu)),
      ],
    );
    return Container(
      height: 60,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [userInfo, icons],
      ),
    );
    ;
  }
}
