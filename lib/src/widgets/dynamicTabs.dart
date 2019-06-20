import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/widgets/customTabBar.dart';

class DynamicTabs extends StatefulWidget {
  final List<String> availableTabs;
  final List<String> allTabNames;
  final List<Widget> allTabViews;
  final TabController controller;
  final bool keepStateAlive;
  final Widget appBar;
  DynamicTabs({
    Key key,
    this.availableTabs,
    this.allTabNames,
    this.allTabViews,
    this.appBar,
    this.controller,
    this.keepStateAlive,
  }) : super(key: key);

  _DynamicTabsState createState() => _DynamicTabsState();
}

class _DynamicTabsState extends State<DynamicTabs>
    with AutomaticKeepAliveClientMixin {
  List<Tab> tabs = [];
  List<Widget> tabViews = [];

  @override
  void initState() {
    super.initState();
    _tapCountCheck();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: Column(
        children: <Widget>[
          widget.appBar,
          CustomTabBar(
            tabs: tabs,
            controller: widget.controller,
            selectedColor: Colors.deepPurple[400],
            unselectedColor: Colors.grey,
          ),
          Expanded(
            child: TabBarView(
              controller: widget.controller,
              children: tabViews,
            ),
          ),
        ],
      ),
    );
  }

  void _tapCountCheck() {
    for (String v in widget.availableTabs) {
      int index = widget.allTabNames.indexOf(v);
      if (v == widget.allTabNames[index]) {
        tabs.add(Tab(text: v));
        int newIndex = widget.allTabNames.indexOf(v);
        tabViews.add(widget.allTabViews[newIndex]);
      } else if (v == widget.allTabNames[index]) {
        tabs.add(Tab(text: v));
        int newIndex = widget.allTabNames.indexOf(v);
        tabViews.add(widget.allTabViews[newIndex]);
      } else if (v == widget.allTabNames[index]) {
        tabs.add(Tab(text: v));
        int newIndex = widget.allTabNames.indexOf(v);
        tabViews.add(widget.allTabViews[newIndex]);
      } else if (v == widget.allTabNames[index]) {
        tabs.add(Tab(text: v));
        int newIndex = widget.allTabNames.indexOf(v);
        tabViews.add(widget.allTabViews[newIndex]);
      } else if (v == widget.allTabNames[index]) {
        tabs.add(Tab(text: v));
        int newIndex = widget.allTabNames.indexOf(v);
        tabViews.add(widget.allTabViews[newIndex]);
      }
    }
  }

  @override
  bool get wantKeepAlive => widget.keepStateAlive;
}
