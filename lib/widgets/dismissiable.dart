import 'package:flutter/material.dart';

class DismissablesWidget extends StatefulWidget {
  const DismissablesWidget({super.key});

  @override
  State<DismissablesWidget> createState() => _DismissablesWidgetState();
}

class _DismissablesWidgetState extends State<DismissablesWidget> {
  List <String> fruits = ['Mango','Orange','Banana','Watermelon','Pineapple'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible Package'),
      ),
      body: ListView.builder(itemCount: fruits.length,itemBuilder: ((context, index) {
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction) {
            if (direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(fruits[index]),
                  backgroundColor: Colors.red,
                ));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(fruits[index]),
                  backgroundColor: Colors.green,
                ));

            }
          },
          key: Key(fruit),
          background: Container(color: Colors.red), 
          secondaryBackground: Container(color: Colors.green),
          child: Card(
            child: ListTile(
              title: Text(fruits[index]),
            ),
          ));
      }),),
    );
  }
}