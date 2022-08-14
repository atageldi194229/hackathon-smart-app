import 'package:flutter/material.dart';
import 'package:lesson1/SMarT%20lady/catagory.dart';
import 'package:lesson1/SMarT%20lady/mainPage.dart';
import 'package:lesson1/SMarT%20lady/notifications.dart';
import 'package:lesson1/login.dart';

import 'chat_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    MainPage(),
    ChatScreen(),
    Notifications(),
    SignUp(), // hava shol bir zat yene klas edip otyrmak gerek dal ok dushundum
  ];
  int _currentSelected = 1;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _onItemTapped(int index) {
    index == 0
        ? _drawerKey.currentState?.openDrawer()
        : setState(() {
            _currentSelected = index;
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      body: _widgetOptions.elementAt(_currentSelected),
      drawer: const Catagory(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _currentSelected,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[800],
        selectedItemColor: Theme.of(context).colorScheme.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Color.fromRGBO(255, 126, 0, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
