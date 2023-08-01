import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1, //app will starts from index 1
      length: 4,
      child:Scaffold(
        appBar: AppBar(title: Text('WhatsApp'),
        backgroundColor: Colors.teal,
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          tabs: [
          Tab(icon: Icon(Icons.people),text: 'Community'),
          Tab(icon: Icon(Icons.chat),text: 'Chats'),
          Tab(icon: Icon(Icons.circle_outlined),text: 'Status'),
          Tab(icon: Icon(Icons.call),text: 'Call'),

        ]),),
        body:TabBarView(children: [
          Container(child: Center(child: Text('COMUNITY',style: TextStyle(fontSize: 30),),),),
          Container(child: Center(child: Text('CHATS',style: TextStyle(fontSize: 30),),),),
          Container(child: Center(child: Text('STATUS',style: TextStyle(fontSize: 30),),),),
          Container(child: Center(child: Text('CALLS',style: TextStyle(fontSize: 30),),),),

          ]),

      ) ,

    );
  }
}