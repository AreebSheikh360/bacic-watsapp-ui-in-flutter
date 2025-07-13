import 'package:flutter/material.dart';
import '../status_tile.dart';

class StatusScreen extends StatelessWidget {
  final List<Map<String, dynamic>> statuses = [
    {
      "name": "Ali",
      "time": "Today, 2:00 PM",
      "avatar": "https://i.pravatar.cc/150?img=12",
      "seen": false,
    },
    {
      "name": "Hina",
      "time": "Today, 1:10 PM",
      "avatar": "https://i.pravatar.cc/150?img=7",
      "seen": true,
    },
    {
      "name": "Ahmed",
      "time": "Yesterday, 11:00 PM",
      "avatar": "https://i.pravatar.cc/150?img=10",
      "seen": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=1"),
                radius: 25,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add, color: Colors.white, size: 15),
                ),
              ),
            ],
          ),
          title: Text("My Status", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Tap to add status update"),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Recent updates", style: TextStyle(color: Colors.grey)),
        ),
        ...statuses.map((status) => StatusTile(
              name: status["name"] as String,
              time: status["time"] as String,
              avatarUrl: status["avatar"] as String,
              isSeen: status["seen"] as bool,
            )),
      ],
    );
  }
}
