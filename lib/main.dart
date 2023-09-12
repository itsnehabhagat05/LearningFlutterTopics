
import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/cartesianChart.dart';



void main(){
  runApp(const LearnApp());
}

class LearnApp extends StatelessWidget {
  const LearnApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.dark,
        
        primaryColor: Colors.deepPurple,),
      home:CartesianChartWidget() ,

    );
  }
}