import 'package:flutter/material.dart';
import 'package:flutter_firebase_whatsapp/pages/group_page.dart';

void main() => runApp(FirebaseWhatsApp());

class FirebaseWhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => GroupPage(),
      },
    );
  }
}


