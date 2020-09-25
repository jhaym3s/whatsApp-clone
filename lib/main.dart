import 'package:flutter/material.dart';
import 'package:whatapp_clone/chatScreen.dart';
import 'package:whatapp_clone/imageScreen.dart';
import 'package:whatapp_clone/personalChatScreen.dart';
import 'package:whatapp_clone/tabBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context)=> TabBarScreen(),
        PersonalChatScreen.routeName: (context)=> PersonalChatScreen(),
        ImagePage.routeName:(context)=> ImagePage(),

      },
    );
  }
}

