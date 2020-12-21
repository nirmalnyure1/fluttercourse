import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.4, 0.5),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/home.jpg'),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Text(
            'HOME',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
