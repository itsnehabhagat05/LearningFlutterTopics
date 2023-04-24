

import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List <String> fruits = ["Apple","Mango","Banana","Pineapple"];
  Map fruits_person = {
    'fruits' :["Apple","Mango","Banana","Pineapple"],
    'name' : ['Neha','Karan','Akshit','Ankita']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List And Grid'),
        backgroundColor: Colors.red,
        // shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(15),
        // ),
        elevation: 10,
      ),

      body: Container(
        //G  R  I  D  V  I  E  W :--------------------------------------------

        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: 
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4),
            itemBuilder: ((context, index) {
              return Card(  
              child: Center(
                child:Text(fruits[index]),),
            );
          })),


        // G  R  I  D  V  I  E  W : ------------------------------------------

        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount:2,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 20,
        //     childAspectRatio: 2/3),
        //     children: [
        //       Card(
        //         child: Center(child: Text('Orange')),
        //         elevation: 10,
        //       ),
        //       Card(
        //         child: Center(child: Text('Orange')),
        //         elevation: 10,
        //       ),
        //       Card(
        //         child: Center(child: Text('Orange')),
        //         elevation: 10,
        //       ),Card(
        //         child: Center(child: Text('Orange')),
        //         elevation: 10,
        //       ),
        //        Card(
        //         child: Center(child: Text('Orange')),
        //         elevation: 10,
        //       ),
        //       Card(
        //         child: Center(child: Text('Orange')),
        //         elevation: 10,
        //       ),

        //     ],
        //   ),
            

        //L  I  S  T  V  I  E  W :----------------------------------------------------

        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: ((context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {
        //           print(fruits_person['fruits'][index]);
        //         },
        //         leading: Icon(Icons.person),
        //         title:Text( fruits_person['fruits'][index]),
        //         subtitle: Text( fruits_person['name'][index]),

        //     ));
        //   }),
        // ),

          // Card(
          //   child: ListTile(
          //     title: Text('Papaya'),
          //     subtitle: Text('Neha'),
          //   ),
          // ),
          
          
        
      ),
    );
  }
}
