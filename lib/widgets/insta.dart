import 'package:flutter/material.dart';

class InstaUI extends StatelessWidget {
  const InstaUI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
          
          title: Text(
            'its.neha__05',
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22
            ),),),
        body: Container(
          child: Column(
            children: [
              Container(
                height:180,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 180,
                      //color: Colors.purple,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        CircleAvatar(radius: 50,
                        backgroundImage:NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwzhLXDq2pYlC-SfbwVt0_00N0eO11bpmCNplpeCq5g79asJ1ipbydsbUYJHaTBVjwDpQ&usqp=CAU'
                        ),),
                        SizedBox(height: 5,),
                        Text('Neha Bhagat',
                        style: TextStyle(fontSize: 20,
                        ),),
                        Text('Flutter👩‍💻/Kolkata',
                        style: TextStyle(fontSize: 14,
                        ),),
                      ]),
                    ),Expanded(child:Container(
                      padding: EdgeInsets.all(10),
                      //color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                              profiledetail('150', 'Post'),
                              SizedBox(width: 10),
                              profiledetail('5k', 'Followers'),
                              SizedBox(width: 10),
                              profiledetail('100', 'Following')
                            ]
                            ),),
    
                          SizedBox(height: 10,),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height:40,  
                              
                                             
                                  child: ElevatedButton(
                                  onPressed: () {}, 
                                  child: Text('Follow')
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2
                                  ),
                                  color:Colors.white,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.keyboard_arrow_down,
                                color: Colors.blue,),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),),
                  ],
                ),
                
              ),
              Container(
                height:110,
                //color: Colors.blue,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder:(context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8G6TOdJ9yCvc2-RfJNVmLgpRmaGT7hP4MmQ&usqp=CAU'),
                            fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      Text("data")
                    ],
                  );
                }, ) ,
              ),
              Container(
                
                height:100,
                //color: Colors.green,
                // child: Row(
                  
                //   children: [
                //     Icon(Icons.image),
                //     SizedBox(width: 120),
                //     Icon(Icons.video_camera_back,),
                //     SizedBox(width: 120),
                //     Icon(Icons.person),
                //   ],
    
                // ),
                child: TabBar(tabs: [
                  Tab(icon: Icon(Icons.grid_3x3_outlined,color: Colors.black,size: 35,)),
                  Tab(icon: Icon(Icons.image,color: Colors.black,size: 35)),
                  Tab(icon: Icon(Icons.video_camera_front,color: Colors.black,size: 35)),
                ]),
                
              ),
              Expanded(child:Container(
                //color: Colors.yellow,
                child:GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:BorderRadius.circular(5),
                        image: DecorationImage(
                            image:NetworkImage('https://d23.com/app/uploads/2021/01/780w-463h-011821_winnie-the-pooh-disney-many-adventures-of-winnie-the-pooh.jpg'),
                            fit: BoxFit.cover),
                      ),
                        
    
                      margin:EdgeInsets.all(5),
                      height: 150,
                      width: 150,
                      
                    );
                  },),
              ),),
            ],
          ),
        ),
      ),
    );
  }
  Widget profiledetail(String text1,text2){
    
    return Column(children: [
      Text(text1,
      style: 
      TextStyle(fontSize:24,),),
      Text(text2,
      style: 
      TextStyle(fontSize:14,),),
      ],

    );
  }
}