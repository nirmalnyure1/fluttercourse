import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 3,
          child: Card(
            elevation: 20,
            child: Text('This is card'),
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.purple,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.lightGreenAccent,
          ),
        ),
      ],
    );
  }
}
