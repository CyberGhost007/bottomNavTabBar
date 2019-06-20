import 'package:flutter/material.dart';

class MyTeamBottomTab extends StatefulWidget {
  @override
  _MyTeamBottomTabState createState() => _MyTeamBottomTabState();
}

class _MyTeamBottomTabState extends State<MyTeamBottomTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 130.0,
                floating: false,
                pinned: true,
                actions: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back),
                        ),
                      ],
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Row(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://specials-images.forbesimg.com/imageserve/5c76b7d331358e35dd2773a9/416x416.jpg?background=000000&cropX1=0&cropX2=4401&cropY1=0&cropY2=4401',
                          ),
                        ),
                      ),
                      Text(
                        "Collapsing Toolbar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.1, 0.9],
                        colors: [
                          Colors.purple[600],
                          Colors.deepPurple[400],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Tab 1"),
                      Tab(icon: Icon(Icons.lightbulb_outline), text: "Tab 2"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: Text("Sample text"),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
