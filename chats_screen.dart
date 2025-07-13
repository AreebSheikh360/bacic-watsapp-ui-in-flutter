import 'package:flutter/material.dart';
import '../chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {
      "name": "Ali",
      "message": "Kya scene hai?",
      "time": "4:30 PM",
      "avatar": "https://i.pravatar.cc/150?img=3"
    },
    {
      "name": "Hina",
      "message": "Kal milte hain!",
      "time": "3:20 PM",
      "avatar": "https://i.pravatar.cc/150?img=5"
    },
    {
      "name": "Ahmed",
      "message": "Check this out",
      "time": "2:10 PM",
      "avatar": "https://i.pravatar.cc/150?img=8"
    },
    {
      "name": "Mom",
      "message": "Beta, dinner ready hai",
      "time": "1:15 PM",
      "avatar": "https://i.pravatar.cc/150?img=1"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatTile(
          name: chat['name'] ?? '',
          message: chat['message'] ?? '',
          time: chat['time'] ?? '',
          avatarUrl: chat['avatar'] ?? '',
        );
      },
    );
  }
}
