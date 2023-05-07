import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Doraemon Images')
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
        
          //-----------------------------------------------------------------------------------------------------------------------
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: 10,
          //       color: Colors.black,
          //       spreadRadius: 5.0
          //     )
          //   ],
          //   image: DecorationImage(
          //     image: NetworkImage('https://img1.ak.crunchyroll.com/i/spire3/3489f76d0b918220770cab20d5c80e6d1565276591_full.png',),
          //     // image: AssetImage(
          //     //   'assets/image4.png'
          //     // ),
          //     fit: BoxFit.cover,),
          //   color: Colors.red,
          //   borderRadius:BorderRadius.circular(20) ),
  
          // // child: Image.network('https://img1.ak.crunchyroll.com/i/spire3/3489f76d0b918220770cab20d5c80e6d1565276591_full.png',
          // fit: BoxFit.cover,),
        
      ),
     ), 
     );
  }
}