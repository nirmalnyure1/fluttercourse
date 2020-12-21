import 'dart:developer';

import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        log('container is clicked');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.green.shade900),
        margin: const EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'This is container',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        height: screenHeight / 6,
        width: screenWidth,
      ),
    );
  }
}
