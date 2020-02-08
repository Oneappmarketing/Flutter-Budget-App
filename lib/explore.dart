import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Container(
      child:Center(child: Text("Explore",style:TextStyle(
       color:Colors.white,
       fontSize: 30.0

      ))
      ),
     


      )
    );
  }
}