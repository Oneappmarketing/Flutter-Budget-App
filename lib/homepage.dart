import 'package:flutter/material.dart';


//Pages

import 'package:travel_app/explore.dart';
import 'package:travel_app/home_view.dart';

import 'package:travel_app/past_trips.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //what tab is selected
int _currentIndex =0;

//List of Page Routes
final List<Widget>_children =[
 HomeView(),
ExplorePage(),
PastTrips(),


];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Appbar
      appBar: AppBar(
        title:Text("Travel Budget App"),
        // centerTitle:true,
        backgroundColor:Colors.green
      ),

      //Body
      body:_children[_currentIndex],
      
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        //Call the function
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        
      items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.explore),
              title: new Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.history),
              title: new Text("Past Trips"),
            ),
          ]
      
      
      ),

    );
  }
//When Tab bar is tapped
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
}
}