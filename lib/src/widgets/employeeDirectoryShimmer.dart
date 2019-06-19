import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/widgets/shimmer.dart';

class EmployeeDirectoryShimmer extends StatefulWidget {
  EmployeeDirectoryShimmer({Key key}) : super(key: key);

  _EmployeeDirectoryShimmerState createState() =>
      _EmployeeDirectoryShimmerState();
}

class _EmployeeDirectoryShimmerState extends State<EmployeeDirectoryShimmer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: SafeArea(
        child: Container(
          height: 60,
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Shimmer(
                height: 40,
                width: 40,
                radius: 100,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Shimmer(
                      height: 14,
                      width: size.width * .8,
                      radius: 8,
                    ),
                    Shimmer(
                      height: 14,
                      width: size.width * .6,
                      radius: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
