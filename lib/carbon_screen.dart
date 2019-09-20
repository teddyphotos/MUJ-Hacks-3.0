import 'package:flutter/material.dart';

class CarbonFootprint extends StatefulWidget {
  @override
  _CarbonFootprintState createState() => _CarbonFootprintState();
}

class _CarbonFootprintState extends State<CarbonFootprint> {
  int _selectedIndex = 0;
  String electricity,distance;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: TIPS ',
      style: optionStyle,
    ),
    Text(
      'Index 1: NEWS',
      style: optionStyle,
    ),
    Text(
      'Index 2: CALCULATOR',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: InputBorder.none,
                hintText: 'Enter the use of electicty in kWh'),
                
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
                decoration: InputDecoration(border: InputBorder.none,
                hintText: 'Enter the approx distance travelled overall'),
                
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                
                onChanged: (value) {
                  distance = value;
                },
              ),

           ],
        )
      ),

                  

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   title: Text('Orbis',style: TextStyle(color: Colors.black)),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            title: Text('Tips',style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.burst_mode),
            title: Text('News',style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dialpad),
            title: Text('Carbon-Footprint',style: TextStyle(color: Colors.black),),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

    );
  }
}