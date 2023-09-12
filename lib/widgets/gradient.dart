import 'package:flutter/material.dart';

class Mygrad extends StatelessWidget {
  const Mygrad({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xfff492f0), Color(0xff471069)],
        ),
      ),
      child: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Adjust the radius value as needed
            ),
            margin: EdgeInsets.all(30),
            color: Colors.white,
            
            child: Center(
              widthFactor: 22,
              child: Text(
                'Hello World ',
                style: TextStyle(
                  color: Color(0xff392d69),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),)),
      ),
        
        ),
      )

   );
  }
}