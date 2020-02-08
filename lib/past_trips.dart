import 'package:flutter/material.dart';

class PastTrips extends StatefulWidget {
  @override
  _PastTripsState createState() => _PastTripsState();
}

class _PastTripsState extends State<PastTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Container(
      child:Center(child: Text("Past Trips",style:TextStyle(
       color:Colors.white,
       fontSize: 30.0

      ))
      ),
     


      )
    );
  }
}