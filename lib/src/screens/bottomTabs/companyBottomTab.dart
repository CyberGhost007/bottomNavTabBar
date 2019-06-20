import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/screens/bottomTabs/detail.dart';

class CompanyBottomTab extends StatefulWidget {
  CompanyBottomTab({Key key}) : super(key: key);

  _CompanyBottomTabState createState() => _CompanyBottomTabState();
}

class _CompanyBottomTabState extends State<CompanyBottomTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(count: index),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(
                child: Text('$index'),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
