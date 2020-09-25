import 'package:flutter/material.dart';

import 'imageScreen.dart';

class StatusScreenItem extends StatelessWidget {
  final String name;
  final String currentTime;
  final String image;
  StatusScreenItem(this.name,this.currentTime,this.image);
  void showImage(BuildContext context){
    Navigator.of(context).pushNamed(ImagePage.routeName,arguments:[name,image] );
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>showImage(context),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(name,style: TextStyle(color: Colors.grey),),
      subtitle: Text(currentTime,style: TextStyle(color: Colors.grey),),
    );;
  }
}
