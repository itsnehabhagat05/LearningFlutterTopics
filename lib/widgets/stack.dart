import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        backgroundColor: Colors.red,
      ),
      // body: Container(
      //   color: Colors.blue,
      //   child: Center(child:
      //     Stack(children: [
      //       Positioned(
      //         bottom: 10,
      //         left: 30,
      //         child: Container(height: 300,width: 300,color: Colors.yellow,)),
      //       Positioned(
      //         top: 40,
      //         right: 50,
      //         child: Container(height: 150,width: 150,color: Colors.red,)),
      //       Center(child: Container(height: 50,width: 50,color: Colors.green,)),

      //     ],)
      //   ),
      // ),
      body: Stack(
        children:[
          Positioned(
            child: 
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                color:Colors.yellow ,
                image:DecorationImage(
                  image:AssetImage('assets/download.jpg'),
                  fit: BoxFit.cover )
              ) ,
              ),),
              Positioned(
                left: 100,
                top: 200,
                child: Container(
                  height: 50,width: 200,color:Colors.deepPurple,
                  child: Center(child: Text('Hello',style: TextStyle(color: Colors.white,fontSize: 20 ),)),
                  
                  ),
              )

        ]),
    );
  }
}