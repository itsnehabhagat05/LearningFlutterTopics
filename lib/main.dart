//import 'package:learn_flutter/widgets/container_sized.dart';
// import 'package:learn_flutter/widgets/list_grid.dart';
// import 'package:learn_flutter/widgets/rowscols.dart';
// import 'package:learn_flutter/widgets/buttons.dart';
// import 'package:learn_flutter/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/animated_text.dart';
import 'package:learn_flutter/widgets/bottom_nav.dart';
import 'package:learn_flutter/widgets/dismissiable.dart';
import 'package:learn_flutter/widgets/drop_down.dart';
import 'package:learn_flutter/widgets/form.dart';


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
        brightness: Brightness.light,
        
        primaryColor: Colors.deepPurple,),
      home:FormWidget() ,

    );
  }
}