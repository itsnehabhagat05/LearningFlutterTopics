import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rows And Columns'),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        // child: Row(
        //   // mainAxisAlignment:MainAxisAlignment.center ,
        //   mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
        //   crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //   Container(height: 60,width: 60,color: Colors.red,),
        //   Container(height: 60,width: 60,color: Colors.blue,),
        //   Container(height: 60,width: 60,color: Colors.green,),
        //   Container(height: 60,width: 60,color: Colors.pink,)
        // ],)

        // height: 200,
        // width: 200,        
        // child: Wrap(
        //   direction: Axis.vertical,
        //   alignment: WrapAlignment.end,
        
        //   children: [
        //   Container(height: 60,width: 60,color: Colors.red,),
        //   Container(height: 60,width: 60,color: Colors.blue,),
        //   Container(height: 60,width: 60,color: Colors.green,),
        //   Container(height: 60,width: 60,color: Colors.purple,),
        //   Container(height: 60,width: 60,color: Colors.black,),
          

        child: Column(
          
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          Container(height: 60,width: 60,color: Colors.red,),
          Container(height: 60,width: 60,color: Colors.blue,),
          Container(height: 60,width: 60,color: Colors.green,),
          Container(height: 60,width: 60,color: Colors.purple,),
          Container(height: 60,width: 60,color: Colors.black,)
        ],)

      ),
      
    );
  }
}
