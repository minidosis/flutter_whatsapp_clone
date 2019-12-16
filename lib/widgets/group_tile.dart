import 'package:flutter/material.dart';
import 'package:flutter_firebase_whatsapp/model/group.dart';

class GroupTile extends StatelessWidget {
  final Group group;

  const GroupTile(this.group);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 45,
        decoration: BoxDecoration(
          color: Colors.teal[100],
          shape: BoxShape.circle,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(group.name),
          Text(
            '16/12/2019',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
        ],
      ),
      subtitle: Text(group.id),
    );
  }
}
