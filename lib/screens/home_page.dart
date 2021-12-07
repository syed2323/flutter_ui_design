import 'package:flutter/material.dart';
import 'package:new_app/screens/screen2.dart';
import 'package:new_app/widgets/drawer.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;


  static const TextStyle optionStyle =
  TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Screen2()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     endDrawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,



      ),


      backgroundColor: Colors.grey[900],
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 5)),

          Container(

            height: 548,
            width: double.infinity,
            child:
            _widgetOptions.elementAt(_selectedIndex),

          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'user',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'New page',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),



      );
    }
  }


