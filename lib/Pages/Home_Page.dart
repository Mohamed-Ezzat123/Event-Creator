import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Navigation_Bar/About.dart';
import '../Navigation_Bar/Contact.dart';
import '../Navigation_Bar/Home.dart';
import '../Navigation_Bar/Our Offer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _widgetOption = <Widget>[
    Home(),
    About(),
    OurOffers(),
    Contact(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'About',
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Our Offers',
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Contact',
              backgroundColor: Colors.amberAccent),
        ],
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _changeItem,
      ),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}
