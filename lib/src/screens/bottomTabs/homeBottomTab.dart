import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/widgets/employeeDirectoryShimmer.dart';

class HomeBottomTab extends StatefulWidget {
  HomeBottomTab({Key key}) : super(key: key);

  _HomeBottomTabState createState() => _HomeBottomTabState();
}

class _HomeBottomTabState extends State<HomeBottomTab> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return EmployeeDirectoryShimmer();
        },
      ),
    );
  }
}
