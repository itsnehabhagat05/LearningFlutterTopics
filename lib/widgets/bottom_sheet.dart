import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Bottom Sheet Widget'),       
      ),
      body: Center(
        child: ElevatedButton(child: Text('Show Bottom Sheet') ,
        onPressed: () {
          showModalBottomSheet(
            //isDismissible: false,
            enableDrag: true,
            elevation: 0,
            //backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))
            ),
            context: context, 
            builder: (context){
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                ListTile(
                  title: Text('Neha'),
                  subtitle: Text('order a pizza'),
                ),
                ListTile(
                  title: Text('Alex'),
                  subtitle: Text('order a Burger'),
                ),
                ListTile(
                  title: Text('Gaurav'),
                  subtitle: Text('order a cake'),
                ),
                ListTile(
                  title: Text('Simran'),
                  subtitle: Text('order an Apple'),
                ),
              ],);
            });          
        },)),

    );
  }
}