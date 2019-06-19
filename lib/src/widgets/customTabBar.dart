import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<Tab> tabs;
  final TabController controller;
  final Color selectedColor;
  final Color unselectedColor;

  static const BorderRadius radius = BorderRadius.vertical(
    bottom: Radius.circular(16.0),
  );

  const CustomTabBar({
    @required this.tabs,
    @required this.controller,
    this.selectedColor,
    this.unselectedColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.3, color: Colors.grey[400]),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 35,
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              labelStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
              isScrollable: true,
              indicatorWeight: 2.0,
              indicatorSize: TabBarIndicatorSize.label,
              controller: controller,
              tabs: tabs,
              labelColor: selectedColor,
              unselectedLabelColor: unselectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
