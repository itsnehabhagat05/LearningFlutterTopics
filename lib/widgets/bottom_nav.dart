import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_flutter/widgets/dismissiable.dart';
import 'package:learn_flutter/widgets/list_grid.dart';
import 'package:learn_flutter/widgets/rowscols.dart';
import 'package:learn_flutter/widgets/snackbar.dart';



class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex = 0;
// List<Widget> widgets = [
//   Text('Home'),
//   Text('Search'),
//   Text('Add'),
//   Text('Profile'),
// ];

PageController pageController = PageController();

void onItemTapped(int index){
  setState(() {
    selectedindex =index;
  });
  pageController.jumpToPage(index);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: PageView(
        controller:pageController,
        children: [
          DismissablesWidget(),
          RowsCols(),
          SnackbarWidget(),
          ListGrid()
        ],),
      // body: Center(child: widgets.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem> 
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),
          label: 'Home'),
          BottomNavigationBarItem(
          icon: Icon(Icons.search,),
          label: 'Search'),
          BottomNavigationBarItem(
          icon: Icon(Icons.add,),
          label: 'Add'),
          BottomNavigationBarItem(
          icon: Icon(Icons.person,),
          label: 'Profile'),
      ],
      currentIndex:selectedindex ,
      selectedItemColor: Colors.green,
      unselectedItemColor:Colors.grey ,
      onTap: onItemTapped,
      ),

    );
  }
}