import 'package:flutter/material.dart';
import 'package:flutter_firebase_whatsapp/db.dart' as db;
import 'package:flutter_firebase_whatsapp/model/group.dart';
import 'package:flutter_firebase_whatsapp/model/message.dart';
import 'package:flutter_firebase_whatsapp/widgets/loading.dart';
import 'package:flutter_firebase_whatsapp/widgets/message_box.dart';
import 'package:flutter_firebase_whatsapp/widgets/message_list.dart';
import 'package:flutter_firebase_whatsapp/widgets/red_error.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Group group = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(group.name)),
      backgroundColor: Colors.teal[100],
      body: StreamBuilder(
        stream: db.getGroupMessages(group.id),
        builder: (context, AsyncSnapshot<List<Message>> snapshot) {
          if (snapshot.hasError) {
            return RedError(snapshot.error);
          }
          if (!snapshot.hasData) {
            return Loading();
          }
          return Column(
            children: <Widget>[
              Expanded(
                child: MessageList(messages: snapshot.data),
              ),
              MessageBox(onSend: (text) {
                db.sendMessage(group.id, Message(text));
              }),
            ],
          );
        },
      ),
    );
  }
}


