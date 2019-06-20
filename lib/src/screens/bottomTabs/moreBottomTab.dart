import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/screens/homeScreen.dart';

class MoreBottomTab extends StatefulWidget {
  MoreBottomTab({Key key}) : super(key: key);

  _MoreBottomTabState createState() => _MoreBottomTabState();
}

class _MoreBottomTabState extends State<MoreBottomTab> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(child: Center()),
          RaisedButton(
            onPressed: () {
              // On tap to change the tab
            },
            child: Text('toMe'),
          ),
          Expanded(child: Center()),
        ],
      ),
    );
  }
}
