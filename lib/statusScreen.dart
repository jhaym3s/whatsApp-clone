import 'package:flutter/material.dart';
import 'package:whatapp_clone/imageScreen.dart';
import 'package:whatapp_clone/statusScreenItem.dart';
import './dummyData.dart';
import 'package:intl/intl.dart';

class StatusScreen extends StatelessWidget {

  final DateTime now = DateTime.now();
  final String currentTime = DateFormat.yMEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(itemBuilder: (context,index){
        return StatusScreenItem(dummyUsers[index].name, currentTime, dummyUsers[index].image);
      },itemCount: dummyUsers.length,),
    );
  }
}
