import 'package:flutter/material.dart';
import 'package:whatapp_clone/callScreen.dart';
import './chatScreen.dart';
import './dummyData.dart';
import './statusScreen.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                // showSearch(context: context, delegate: null),
              },
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
          title: Text("What'sApp Clone"),
          bottom: TabBar(tabs: [
            Row(
              children: [
                Text(
                  "Chat",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green),
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 11,
                  child: Text(
                    "${dummyUsers.length}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Text(
              "Status",
              style: TextStyle(color: Colors.green),
            ),
            Text(
              "Calls",style: TextStyle(color: Colors.green),
            )
          ]),
          backgroundColor: Colors.black54,
        ),
        body: TabBarView(
          children: [ChatScreen(), StatusScreen(), CallScreen()],
        ),
       drawer: Drawer(),
      ),
    );
  }
}
