
import 'package:flutter/material.dart';
import 'news.dart';
import 'carbon_screen.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;
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


  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [News(), News(), CarbonFootprint()];
    void _onTabTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return Scaffold(
           
      body: _children[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        onTap: _onTabTapped,
      ),
    );
  }
}