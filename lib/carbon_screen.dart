

import 'package:flutter/material.dart';


class CarbonFootprint extends StatefulWidget {
  
  @override
  _CarbonFootprintState createState() => _CarbonFootprintState();
}

class _CarbonFootprintState extends State<CarbonFootprint> {
  
  
  int rating;
  int a1,a2,a3,a4;
  double y=0;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Image.asset('assets/images/Orbis.png',height: 150.0),
               SizedBox(
                  height: 10.0,
                ),
                Text('How likey are you to use personal veichle in a week?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:17.0),),
                 SizedBox(
                  height: 10.0,
                ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 
                 children: <Widget>[
                 
                  ButtonTheme(
                   minWidth: 10.0,

                    child: RaisedButton(
                     
                     child: Text('1'),
                     
                     color:Colors.green,
                     onPressed:(){
                       a1=1;
                     },
                   ),
                 ),
                  ButtonTheme(

                     minWidth: 10.0,
                     child: RaisedButton(
                     child: Text('2'),
                     color:Colors.green,
                     onPressed:(){
                       a1=2;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                                child: Text('3'),
                     color:Colors.green,
                     onPressed:(){
                       a1=3;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                     child: Text('4'),
                     color:Colors.green,
                     onPressed:(){
                       a1=4;
                     },
                 ),
                  ),
               ],),
               SizedBox(
                  height: 10.0,
                ),
                Text('How likey are you to turn off electric switches?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:17.0),),
                 SizedBox(
                  height: 10.0,
                ),
                //Text('AMan',style: TextStyle(color: Colors.white)),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 
                 children: <Widget>[
                 
                  ButtonTheme(
                   minWidth: 10.0,

                    child: RaisedButton(
                     
                     child: Text('1'),
                     
                     color:Colors.green,
                     onPressed:(){
                       a2=1;
                     },
                   ),
                 ),
                  ButtonTheme(

                     minWidth: 10.0,
                     child: RaisedButton(
                     child: Text('2'),
                     color:Colors.green,
                     onPressed:(){
                       a2=2;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                                child: Text('3'),
                     color:Colors.green,
                     onPressed:(){
                       a2=3;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                     child: Text('4'),
                     color:Colors.green,
                     onPressed:(){
                       a2=4;
                     },
                 ),
                  ),
               ],),
               SizedBox(
                  height: 10.0,
                ),
                Text('How likey are you to burn your trash?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20.0),),
                 SizedBox(
                  height: 10.0,
                ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 
                 children: <Widget>[
                 
                  ButtonTheme(
                   minWidth: 10.0,

                    child: RaisedButton(
                     
                     child: Text('1'),
                     
                     color:Colors.green,
                     onPressed:(){
                       a3=1;
                     },
                   ),
                 ),
                  ButtonTheme(

                     minWidth: 10.0,
                     child: RaisedButton(
                     child: Text('2'),
                     color:Colors.green,
                     onPressed:(){
                       a3=2;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                                child: Text('3'),
                     color:Colors.green,
                     onPressed:(){
                       a3=3;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                     child: Text('4'),
                     color:Colors.green,
                     onPressed:(){
                       a3=4;
                     },
                 ),
                  ),
               ],),
               SizedBox(
                  height: 10.0,
                ),
                Text('How likey are you to drive ina week?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20.0),),
                 SizedBox(
                  height: 10.0,
                ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 
                 children: <Widget>[
                 
                  ButtonTheme(
                   minWidth: 10.0,

                    child: RaisedButton(
                     
                     child: Text('1'),
                     
                     color:Colors.green,
                     onPressed:(){
                       a4=1;
                     },
                   ),
                 ),
                  ButtonTheme(

                     minWidth: 10.0,
                     child: RaisedButton(
                     child: Text('2'),
                     color:Colors.green,
                     onPressed:(){
                       a4=2;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                                child: Text('3'),
                     color:Colors.green,
                     onPressed:(){
                       a4=3;
                     },
                 ),
                  ),
                  ButtonTheme(
                    minWidth: 10.0,
                    child: RaisedButton(
                     child: Text('4'),
                     color:Colors.green,
                     onPressed:(){
                       a4=4;
                     },
                 ),
                  ),
                  

               ],
               
               

               ),
              
              SizedBox(height: 10.0,),
              
              RaisedButton(
                child: Text('CALCULATE'),
                onPressed: (){
                  y=(a1+a2+a3+a4)*0.625;
                  print(y);
                   setState(() {
                     
                   Text('The Rating  Is $y',style: TextStyle(color:Colors.white),);
                     
                   });
                  
                  

                },

              ),
              Text('Aman',style: TextStyle(color: Colors.white),)
              
            ],
              


             
             
             
      ),
      
        ),
      ),
    );
  }
}