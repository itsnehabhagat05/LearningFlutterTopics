import 'package:flutter/material.dart';

class DropDownWidget  extends StatefulWidget {
  const DropDownWidget ({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 47, 95, 146),
        title: Text('Drop Down List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              value: selectedvalue,
              icon: Icon(Icons.arrow_circle_down_rounded),
              onChanged: (String ?newvalue ) {
                setState(() {
                  selectedvalue = newvalue! ;                
                });
                
              },
              
              items: <String>[
                'Orange',
                'Apple',
                'Banana',
                'Mango',
                'Grapes'
            ].map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value:value ,
                child: Text(selectedvalue),
              );
            }).toList()
            ),
          ),
        ]),
      ),
    );
  }
}