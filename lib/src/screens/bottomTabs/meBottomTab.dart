import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/widgets/dynamicTabs.dart';
import 'package:keka_bottombar/src/widgets/gradientBar.dart';

class MeBottomTab extends StatefulWidget {
  MeBottomTab({Key key}) : super(key: key);

  _MeBottomTabState createState() => _MeBottomTabState();
}

class _MeBottomTabState extends State<MeBottomTab>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController tabController;
  List<String> availableTabs = ['Time', 'Inbox', 'Finances'];
  List<String> allTabNames = [
    'Time',
    'Inbox',
    'Feedback',
    'Finances',
    'Profile',
  ];

  static List<Widget> allTabViews = [
    Center(child: Text('Tab 1')),
    Center(child: Text('Tab 2')),
    Center(child: Text('Tab 3')),
    Center(child: Text('Tab 4')),
    Center(child: Text('Tab 5')),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        initialIndex: 0, length: availableTabs.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      // body: _getTabs(availableTabs, allTabNames, allTabViews),
      body: DynamicTabs(
        allTabNames: allTabNames,
        allTabViews: allTabViews,
        availableTabs: availableTabs,
        controller: tabController,
        appBar: GradientBar(),
        keepStateAlive: true,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  // Widget _getTabs(
  //   List<String> availableTabs,
  //   List<String> allTabNames,
  //   List<Widget> allTabViews,
  // ) {
  //   List<Tab> tabs = [];
  //   List<Widget> tabViews = [];

  //   for (String v in availableTabs) {
  //     int index = allTabNames.indexOf(v);
  //     if (v == allTabNames[index]) {
  //       tabs.add(Tab(text: v));
  //       int newIndex = allTabNames.indexOf(v);
  //       tabViews.add(allTabViews[newIndex]);
  //     } else if (v == allTabNames[index]) {
  //       tabs.add(Tab(text: v));
  //       int newIndex = allTabNames.indexOf(v);
  //       tabViews.add(allTabViews[newIndex]);
  //     } else if (v == allTabNames[index]) {
  //       tabs.add(Tab(text: v));
  //       int newIndex = allTabNames.indexOf(v);
  //       tabViews.add(allTabViews[newIndex]);
  //     } else if (v == allTabNames[index]) {
  //       tabs.add(Tab(text: v));
  //       int newIndex = allTabNames.indexOf(v);
  //       tabViews.add(allTabViews[newIndex]);
  //     } else if (v == allTabNames[index]) {
  //       tabs.add(Tab(text: v));
  //       int newIndex = allTabNames.indexOf(v);
  //       tabViews.add(allTabViews[newIndex]);
  //     }
  //   }

  //   return Container(
  //     child: Column(
  //       children: <Widget>[
  //         GradientBar(),
  //         CustomTabBar(
  //           tabs: tabs,
  //           controller: tabController,
  //           selectedColor: Colors.deepPurple[400],
  //           unselectedColor: Colors.grey,
  //         ),
  //         Expanded(
  //           child: TabBarView(
  //             controller: tabController,
  //             children: tabViews,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  //   // return Container();
  // }
}
