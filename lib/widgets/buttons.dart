import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding:MaterialStateProperty.all(EdgeInsets.all(20)) ,
                elevation: MaterialStateProperty.all(10),
                overlayColor:MaterialStateProperty.all(Colors.black) ,
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: ()  {}, 
            child: Text('Click Here',
              style: 
                TextStyle(fontSize: 30,
                  color: Colors.black),
              )
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Theme.of(context).primaryColor) ,
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ))
                ),
                onPressed: (() {
                  print("clicked");
                }), 
                child: 
                 Text('Click Here',
                style: 
                  TextStyle(fontSize: 30,
                    color: Colors.white),
                )              
              ),
            ),
          ]),
      ),
    );
  }
}