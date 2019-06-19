import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/meBottomTab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController _pageController;
  bool backPressed = false;

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      _pageController.jumpToPage(index);
      print(index);
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Icon(Icons.home),
                  MeBottomTab(),
                  Icon(Icons.group),
                  Icon(Icons.business),
                  Icon(Icons.more_horiz),
                ],
                controller: _pageController,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 13),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                'Me',
                style: TextStyle(fontSize: 13),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              title: Text(
                'My Team',
                style: TextStyle(fontSize: 13),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text(
                'Company',
                style: TextStyle(fontSize: 13),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text(
                'More',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      onWillPop: () {
        if (backPressed) {
          exit(0);
        } else {
          setState(() {
            backPressed = true;
          });
          Fluttertoast.showToast(
              msg: "Press back again to exit the app",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIos: 1,
              backgroundColor: Colors.redAccent,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      },
    );
  }
}
