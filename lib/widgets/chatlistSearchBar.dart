import 'package:flutter/material.dart';

class ChatListSearchBar extends StatefulWidget {
  @override
  _ChatListSearchBarState createState() => _ChatListSearchBarState();
}

class _ChatListSearchBarState extends State<ChatListSearchBar> {
  FocusNode focusNode = FocusNode();
  String hintText = "Search or start a new chat";
  IconData prefixIcon = Icons.search;
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        prefixIcon = Icons.arrow_back;
        hintText = '';
      } else {
        prefixIcon = Icons.search;
        hintText = "Search or start a new chat";
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey[100],
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: TextFormField(
            focusNode: focusNode,
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                size: 20,
              ),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 15),
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
