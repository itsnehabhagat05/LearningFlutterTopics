import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  CircleAvatar(radius: 40,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr45xJtdhpEOZWQ0vwoSkwJoJWZX6yfnxq9A&usqp=CAU'),
                  
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Neha Bhagat',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                    Text('nehabhagat873@gmail.com')
                  ],)
                ],),
              ),
            
            ),
            ListTile(leading: Icon(Icons.folder),
            title: Text('My Files'),),
            ListTile(leading: Icon(Icons.group),
            title: Text('Shared With Me'),),
            ListTile(leading: Icon(Icons.star),
            title: Text('Starred'),),
            ListTile(leading: Icon(Icons.delete),
            title: Text('Trashed'),),
            ListTile(leading: Icon(Icons.upload),
            title: Text('Uploads'),),

            Divider(),
            ListTile(leading: Icon(Icons.share),
            title: Text('Share'),),
            ListTile(leading: Icon(Icons.logout),
            title: Text('Logout'),),
          ]),
        ),
      ),
     appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Color.fromARGB(255, 55, 133, 196),
      ),
      body: Container(
        child: Center(
          child: Text('Hey There'),
        ),
      ),
    );

  }
}