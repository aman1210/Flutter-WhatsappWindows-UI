import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.grey[200],
                radius: 25,
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
