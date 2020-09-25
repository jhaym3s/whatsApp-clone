import 'package:flutter/material.dart';

class PersonalChatScreen extends StatelessWidget {
  static const routeName = "/personChatScreen";
  @override
  Widget build(BuildContext context) {
    final dataGotten= ModalRoute.of(context).settings.arguments as List<String>;
    final name  = dataGotten[0];
    final lastMessage= dataGotten[1];
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15))
        ),
      ),
    );
  }
}
