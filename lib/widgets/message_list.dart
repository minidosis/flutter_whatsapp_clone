import 'package:flutter/material.dart';
import 'package:flutter_firebase_whatsapp/model/message.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    @required this.messages,
  });

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(messages[index].text),
          subtitle: Text(messages[index].datetime.toString()),
        );
      },
    );
  }
}
