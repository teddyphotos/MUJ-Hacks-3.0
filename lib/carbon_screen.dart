import 'package:flutter/material.dart';


class CarbonFootprint extends StatefulWidget {
  
  @override
  _CarbonFootprintState createState() => _CarbonFootprintState();
}

class _CarbonFootprintState extends State<CarbonFootprint> {
  
  static String electricity,distance,fuel,liqour;
  //  int ele = int.parse(electricity);
  //  int dis = int.parse(distance);
  //   int  result= ele*dis;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child:SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             
             children: <Widget>[
               Image.asset('assets/images/Orbis.png',height: 150.0,),
               SizedBox(
                  height: 20.0,
                ),
              
               
               
                TextField(
                  
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                  hintText: 'Enter the electricity consumed in kWh',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
                  ),
                  
                  style: TextStyle(color: Colors.black),
                   textAlign: TextAlign.center,
                    onChanged: (value) {
                    electricity = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                  hintText: 'Enter the approx distance travelled overall',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
                  ),
                  
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                  
                  onChanged: (value) {
                    distance = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                  hintText: 'Enter the fuel consumed in litres',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
                  ),
                  
                  style: TextStyle(color: Colors.black),
                   textAlign: TextAlign.center,
                    onChanged: (value) {
                    fuel = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                  hintText: 'Enter the intake of liquour in litres',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
                  ),
                  
                  style: TextStyle(color: Colors.black),
                   textAlign: TextAlign.center,
                    onChanged: (value) {
                    fuel = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text("Calculate"),
                  
                  onPressed: (){
                    setState(() {

                      
                    });
                  },
                  
                  
                ),
                 
                
             ],
             
      ),
        ),
      ),
    );
  }
}