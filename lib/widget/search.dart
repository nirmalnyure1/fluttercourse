import 'package:flutter/material.dart';
import 'package:professional_class/widget/myCardWrapper.dart';

class Search extends StatelessWidget {
  double sizeBoxHeight = 20.0;
  double paddingAllSide = 10.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyCardWrapper("Your Top Generics"),
        MyCardWrapper('Browse All'),
        MyCardWrapper("Songs You May Like"),
      ],
    );
  }
}
