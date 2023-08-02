import 'package:flutter/material.dart';

class UiClone extends StatefulWidget {
  const UiClone({super.key});

  @override
  State<UiClone> createState() => _UiCloneState();
}

class _UiCloneState extends State<UiClone> {
  @override

  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
          Stack(
            children: [
            Positioned(
              child:Container(
                height: 400,
                //color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                      child: 
                      Container(
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:NetworkImage('https://images.squarespace-cdn.com/content/v1/569e766e69492e9dd5373ef6/1552923414901-Q29LZ4RGY66QB896M82T/paris-night-photo-tour-007.jpg?format=1000w') )
                      ),
                      height: 350,)),
                    Positioned(
                      bottom: 0,
                      right: 24,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwzhLXDq2pYlC-SfbwVt0_00N0eO11bpmCNplpeCq5g79asJ1ipbydsbUYJHaTBVjwDpQ&usqp=CAU'),
                        radius: 50,
                      )
                      ),
                      Positioned(
                        top: 45,
                        right: 20,
                        child:Icon(
                           Icons.favorite_border,
                           color: Colors.white,
                           size: 28,
                           )),
                      Positioned(
                        top: 45,
                        left: 15,
                        child:Icon(
                           Icons.arrow_forward,
                           color: Colors.white,
                           size: 28,
                           )),
                  ]),
                )),
          ],),
          Container(
            padding: EdgeInsets.all(10),
                  //color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Madrid city tour for designers',
                      style:TextStyle(
                        
                        fontSize: 35,
                        fontWeight:  FontWeight.bold,
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Text('City description just random',
                      style:TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade200
                      ),),
                    ],
                  ),
                ),
                Container(
                  
                  height: 50,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      rowIconText('20', Icons.favorite_rounded),
                      rowIconText('34', Icons.upload),
                      rowIconText('82', Icons.message),
                      rowIconText('295', Icons.face),
                    ]),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Types of cooking also depend on the skill levels and training of the cooks. Cooking is done both by people in their own dwellings and by professional cooks and chefs in restaurants and other food establishments.Preparing food with heat or fire is an activity unique to humans.',style: TextStyle(fontSize: 15)),
                ),
        ]),
      ),
    );
  }
  Widget rowIconText(String text, IconData icon){
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
        ),),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  
  }
}
