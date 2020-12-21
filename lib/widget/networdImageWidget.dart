import 'package:flutter/material.dart';

class NetWorkImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png',
      width: 300.0,
      fit: BoxFit.fitWidth,
    );
  }
}
