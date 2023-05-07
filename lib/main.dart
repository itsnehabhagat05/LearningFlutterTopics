//import 'package:learn_flutter/widgets/container_sized.dart';
// import 'package:learn_flutter/widgets/list_grid.dart';
// import 'package:learn_flutter/widgets/rowscols.dart';
// import 'package:learn_flutter/widgets/buttons.dart';
// import 'package:learn_flutter/widgets/snackbar.dart';
import 'package:flutter/material.dart';
//import 'package:learn_flutter/drawers.dart';
import 'package:learn_flutter/widgets/Images.dart';
//import 'package:learn_flutter/widgets/dismissiable.dart';

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
        
        primaryColor: Color.fromARGB(255, 55, 133, 196),),
      home:ImagesWidget() ,

    );
  }
}