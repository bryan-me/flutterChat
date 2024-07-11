import 'package:chatapp/screens/chatHome.dart';
import 'package:chatapp/screens/chatLogin.dart';
import 'package:chatapp/screens/chatScreen.dart';
import 'package:chatapp/screens/chatSignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FCM Chatter",

      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Poppins')
        )
      ),
      home: ChatHome(),
      initialRoute: '/',
      routes: {
        '/': (context) => ChatHome(),
        '/login': (context) => ChatLogin(),
        '/signup': (context) => ChatSignUp(),
        '/chat': (context) => ChatScreen(),
        // '/chats':(context)=>ChatterScreen()
      },
    );
  }
}
