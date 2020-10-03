import 'package:flutter/material.dart';

class ChatListAppBar extends StatelessWidget {
  Padding rightIcons(Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    var userIcon = Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: CircleAvatar(
        child: Icon(Icons.person),
        backgroundColor: Colors.grey[200],
      ),
    );
    return Container(
      height: 60,
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          userIcon,
          Row(
            children: [
              rightIcons(Icon(Icons.circle)),
              rightIcons(Icon(Icons.add)),
              rightIcons(Icon(Icons.menu)),
            ],
          )
        ],
      ),
    );
  }
}
