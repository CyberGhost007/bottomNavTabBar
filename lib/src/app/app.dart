import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/screens/homeScreen.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keka BottomBar',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}
