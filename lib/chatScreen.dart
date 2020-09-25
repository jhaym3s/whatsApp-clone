import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './chatScreenItem.dart';
import './dummyData.dart';

class ChatScreen extends StatelessWidget {
  String currentTime = DateFormat.yMEd().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(itemBuilder: (context,index){
        return ChatScreenItem(dummyUsers[index].name, dummyUsers[index].lastMessage, dummyUsers[index].image, currentTime);
      }, itemCount: dummyUsers.length,),
    );
  }
}
