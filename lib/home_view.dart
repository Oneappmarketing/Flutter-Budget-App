import 'package:flutter/material.dart';
import 'package:travel_app/Trip.dart';
//Format Time date
import 'package:intl/intl.dart';


//Model trips

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

//ARRAY OF DATA
final List <Trip> tripsList =[
  
Trip("New York", DateTime.now(), DateTime.now(), 200.00, "car"),
    Trip("Boston", DateTime.now(), DateTime.now(), 450.00, "plane"),
    Trip("Washington D.C.", DateTime.now(), DateTime.now(), 900.00, "bus"),
    Trip("Austin", DateTime.now(), DateTime.now(), 170.00, "car"),
    Trip("Scranton", DateTime.now(), DateTime.now(), 180.00, "car"),



];



  @override
  Widget build(BuildContext context) {
   return Container(
     child:ListView.builder(
       
       itemCount:tripsList.length,
       itemBuilder:(BuildContext context,int index) => buildTripCard(context,index)

      

       
       ),
     
       
    );
  }

///Create A Card widget
///
Widget buildTripCard(BuildContext context,int index){
  //Trip varable we are using for array model
  final trip = tripsList[index];
return Container(
child: Card(
child:Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Column(children: <Widget>[
  
  
  //Print out the object in our array model
  
  //Trip Title 
  Padding(
    padding: const EdgeInsets.only(top:8.0,bottom:8.0),
    child: Row(
      children:<Widget>[
    
    Text(trip.title,style: TextStyle(
     color:Colors.grey[800],
     fontSize:30.0,
     fontWeight: FontWeight.bold


    ),),
    Spacer()
    
      ]
    ),
  ),
  

  //date
  Padding(
    padding: const EdgeInsets.only(top:8.0,bottom: 80.0),
    child: Row(
      children:<Widget>[
      ///String Interpolation dart code
    Text("${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}",),
    Spacer()
      ]
    ),
  ),
  
  
  //budget
  Padding(
    padding: const EdgeInsets.only(top:8.0,bottom:8.0),
    child: Row(
      children:<Widget>[
      Text("\$${trip.budget.toStringAsFixed(2)}",style: TextStyle(fontSize: 35.0),),
      //spaces make it go to right
      Spacer(),

      //Travel type
      Icon(Icons.directions_car)
      // Text(trip.travelType),
    
    
    
      ]
    ),
  )
  ],),
)


),


);



}


}