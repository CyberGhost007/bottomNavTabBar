import 'package:flutter/material.dart';
import 'package:keka_bottombar/src/widgets/employeeDirectoryShimmer.dart';

class ShimmerScreen extends StatelessWidget {
  const ShimmerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
            child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return EmployeeDirectoryShimmer();
          },
        )),
      ),
    );
  }
}
