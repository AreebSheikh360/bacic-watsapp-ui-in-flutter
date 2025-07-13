

// widgets/status_tile.dart
import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget {
  final String name;
  final String time;
  final String avatarUrl;
  final bool isSeen;

  const StatusTile({
    required this.name,
    required this.time,
    required this.avatarUrl,
    this.isSeen = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSeen ? Colors.grey : Color(0xFF25D366),
            width: 3,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 25,
        ),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(time),
    );
  }
}
