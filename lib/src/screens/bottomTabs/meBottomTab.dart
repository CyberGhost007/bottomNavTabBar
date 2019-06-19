import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:keka_bottombar/src/widgets/customTabBar.dart';
import 'package:keka_bottombar/src/widgets/gradientBar.dart';

class MeBottomTab extends StatefulWidget {
  MeBottomTab({Key key}) : super(key: key);

  _MeBottomTabState createState() => _MeBottomTabState();
}

class _MeBottomTabState extends State<MeBottomTab>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController tabController;

  static const List<Tab> tabs = [
    Tab(text: 'Time'),
    Tab(text: 'Inbox'),
    Tab(text: 'Feedback'),
    Tab(text: 'Finances'),
    Tab(text: 'Profile'),
  ];
  static const List<Widget> tabsViews = [
    Center(child: Text('Tab 1')),
    Center(child: Text('Tab 2')),
    Center(child: Text('Tab 3')),
    Center(child: Text('Tab 4')),
    Center(child: Text('Tab 5')),
  ];

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(initialIndex: 0, length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientBar(),
          CustomTabBar(
            tabs: tabs,
            controller: tabController,
            selectedColor: Colors.deepPurple[400],
            unselectedColor: Colors.grey,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: tabsViews,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
