import 'package:flutter/material.dart';
import 'package:flutter_firebase_whatsapp/db.dart' as db;
import 'package:flutter_firebase_whatsapp/model/group.dart';
import 'package:flutter_firebase_whatsapp/widgets/group_list.dart';
import 'package:flutter_firebase_whatsapp/widgets/loading.dart';
import 'package:flutter_firebase_whatsapp/widgets/red_error.dart';

class GroupListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firebase WhatsApp')),
      body: StreamBuilder(
        stream: db.getGroups(),
        builder: (context, AsyncSnapshot<List<Group>> snapshot) {
          if (snapshot.hasError) {
            return RedError(snapshot.error);
          }
          if (!snapshot.hasData) {
            return Loading();
          }
          return GroupList(groups: snapshot.data);
        },
      ),
    );
  }
}



