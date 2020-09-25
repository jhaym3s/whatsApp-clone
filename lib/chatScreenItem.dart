

import 'package:flutter/material.dart';
import 'package:whatapp_clone/personalChatScreen.dart';

class ChatScreenItem extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String image;
  final String date;
  final Color color = Colors.grey;
  ChatScreenItem(this.name,this.lastMessage,this.image,this.date);


  void personalPage(BuildContext context){
    Navigator.of(context).pushNamed(PersonalChatScreen.routeName,arguments: [name,lastMessage]);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: ()=>personalPage(context),
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        title: Text(name,style: TextStyle(color: color,fontWeight: FontWeight.w900),),
        subtitle: Text(lastMessage,style: TextStyle(color: color,)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(date,style: TextStyle(color: color),),
            CircleAvatar(child: Text("1"),backgroundColor: Colors.green,radius: 11,)
          ],
        ),
      )
    );
  }
}
