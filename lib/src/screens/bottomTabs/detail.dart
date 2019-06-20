import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final int count;
  Detail({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Text('$count'),
        ),
      ),
    );
  }
}
