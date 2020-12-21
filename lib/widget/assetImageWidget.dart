import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/bike.jpg',
      width: 100.0,
      height: 100.0,
      fit: BoxFit.contain,
    );
  }
}
