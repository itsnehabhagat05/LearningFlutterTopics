import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(

            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(
                  label: 'undo',
                  textColor: Colors.blue,
                  onPressed: () {},
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                behavior: SnackBarBehavior.floating,
               // padding: EdgeInsets.all(10),
                duration: const Duration(milliseconds: 3000),
               // backgroundColor: Colors.pink,
                content: Text('This is a Snack Bar'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Show Snack Bar !'),
            
          
          )
          ),
      ),
    );
  }
}