import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/companyBottomTab.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/homeBottomTab.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/meBottomTab.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/moreBottomTab.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/myTeamBottomTab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController;
  bool backPressed = false;

  void onItemTapped(int index) {
    if (_selectedIndex != index) {
      pageController.jumpToPage(index);
      print(index);
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
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
                  HomeBottomTab(),
                  MeBottomTab(),
                  MyTeamBottomTab(),
                  CompanyBottomTab(),
                  MoreBottomTab(),
                ],
                controller: pageController,
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
          onTap: onItemTapped,
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
