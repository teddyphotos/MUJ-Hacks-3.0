import 'package:flutter/material.dart';
import 'dart:math';


class CarbonFootprint extends StatefulWidget {
  
  @override
  _CarbonFootprintState createState() => _CarbonFootprintState();
}

class _CarbonFootprintState extends State<CarbonFootprint> {
  
  static String electricity,distance,fuel,liqour;
  int rating;
  //  int ele = int.parse(electricity);
  //  int dis = int.parse(distance);
  //   int  result= ele*dis;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Center(
        child:SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             
             children: <Widget>[
               Image.asset('assets/images/Orbis.png',height: 150.0,),
               SizedBox(
                  height: 20.0,
                ),
              
               
               
                Container(
                  width: 330.0,
                  child: TextField(
                    
                    
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                    hintText: 'Enter the electricity consumed in kWh',
                    hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    ,
                    ),
                    
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                     textAlign: TextAlign.center,
                      onChanged: (value) {
                      electricity = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 345.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                    hintText: 'Enter the approx distance travelled overall',
                     hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),

                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    ,
                    ),
                    
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                    textAlign: TextAlign.center,
                    
                    onChanged: (value) {
                      distance = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 280.0,
                  child: TextField(
                    
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                    hintText: 'Enter the fuel consumed in litres',
                    hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    ,
                        ),
                    
                    
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                     textAlign: TextAlign.center,
                      onChanged: (value) {
                      fuel = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 300.0,
                  child: TextField(
                    
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                    hintText: 'Enter the intake of liquour in litres',
                    hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    ,
                    ),
                    
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                     textAlign: TextAlign.center,
                      onChanged: (value) {
                      fuel = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.green[600],
                  child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  
                  onPressed: (){
                    setState(() {
                      rating = Random().nextInt(9)+1;
                    });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(child: Text('Your Rating is $rating',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,color: Colors.white,),),)
                 
                
             ],
             
      ),
        ),
      ),
    );
  }
}