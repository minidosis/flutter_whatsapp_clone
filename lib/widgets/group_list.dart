import 'package:flutter/material.dart';
import 'package:flutter_firebase_whatsapp/model/group.dart';
import 'package:flutter_firebase_whatsapp/widgets/group_tile.dart';

class GroupList extends StatelessWidget {
  const GroupList({@required this.groups});

  final List<Group> groups;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        return GroupTile(groups[index]);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
          indent: 75,
          endIndent: 15,
        );
      },
    );
  }
}
