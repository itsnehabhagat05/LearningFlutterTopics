
import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/cartesianChart.dart';
import 'package:learn_flutter/widgets/pieChart.dart';
import 'package:learn_flutter/widgets/radialChart.dart';



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
      home:RadialChartWidget() ,

    );
  }
}