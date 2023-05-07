import 'package:flutter/material.dart';
class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert') ,
          onPressed: () {

            _showMyDialog(context);
          },
        )
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      elevation: 0,
      scrollable: true,
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text('Alert !'),
      content: SingleChildScrollView(
        child: ListBody(children: [
          Text('This is Neha'),
          Text('Order A Pizza For Me')
        ]),
      ),
      actions: [
        TextButton(onPressed: (() {}), child: Text('Ok')),
        TextButton(onPressed: (() {
          Navigator.pop(context);
        }), child: Text('Cancel')),
      ],

    );
    
  });
}