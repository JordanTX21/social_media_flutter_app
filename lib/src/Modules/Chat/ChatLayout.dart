import 'package:flutter/material.dart';
import 'package:social_media_flutter_app/src/Widgets/Layout/Layout.dart';

class Chat extends StatefulWidget {
  static const String name = "Chat";
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  body() {
    return Center(
      child: Text(Chat.name),
    );
  }
}
