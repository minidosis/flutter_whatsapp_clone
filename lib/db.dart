import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_whatsapp/model/group.dart';
import 'package:flutter_firebase_whatsapp/model/message.dart';

Stream<List<Group>> getGroups() {
  return Firestore.instance.collection('groups').snapshots().map(toGroupList);
}

Stream<List<Message>> getGroupMessages(String groupId) {
  return Firestore.instance
      .collection('groups/$groupId/messages')
      .snapshots()
      .map(toMessageList);
}
