import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Containers and sizedbox'),
      ),
      body: 
      Center(
        child: Container(               //Paddinng and margin
          
          //color: Colors.yellow,
          width: 100,
          height:100,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            //shape: BoxShape.circle,
            //borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),
            boxShadow:[
              BoxShadow(
                blurRadius: 30,
                spreadRadius: 4,
                color: Colors.blueGrey,

              )
            ]


          ),
          child: Center(
            child: Text('Hello',
            style: TextStyle(fontSize: 20,color: Colors.black),
            ),
          ),
        ),
      )
    );
  }
}