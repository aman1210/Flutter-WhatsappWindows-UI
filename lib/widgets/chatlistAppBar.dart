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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.network(
            "https://lh6.googleusercontent.com/-KCrst8xYQWY/AAAAAAAAAAI/AAAAAAAAACA/brZlv_HG_GM/s96-c/photo.jpg",
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
    return Container(
      height: 60,
      color: Colors.grey[200],
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
