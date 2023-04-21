import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/container_sized.dart';

void main(){
  runApp(const LearnApp());
}

class LearnApp extends StatelessWidget {
  const LearnApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,),
      home: Container_Sized() ,

    );
  }
}