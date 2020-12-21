import 'package:flutter/material.dart';
import 'package:professional_class/model/myCardModel.dart';
import 'package:professional_class/widget/myCard.dart';

// ignore: must_be_immutable
class MyCardWrapper extends StatelessWidget {
  double sizeBoxHeight = 20.0;
  double paddingAllSide = 10.0;
  String title;
  MyCardWrapper(this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: paddingAllSide, left: 20),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: paddingAllSide, left: paddingAllSide, right: paddingAllSide),
          child: Row(
            children: [
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                    title: 'Rock',
                    icon: Icons.music_note,
                    color: Colors.red.shade300,
                  ),
                ),
              ),
              SizedBox(
                width: sizeBoxHeight,
              ),
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                    title: 'Indie',
                    icon: Icons.music_video,
                    color: Colors.blue.shade300,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: sizeBoxHeight,
        ),
        Padding(
          padding: EdgeInsets.only(left: paddingAllSide, right: paddingAllSide),
          child: Row(
            children: [
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                    title: 'Folk & Acoustic',
                    icon: Icons.video_library,
                    color: Colors.teal.shade300,
                  ),
                ),
              ),
              SizedBox(
                width: sizeBoxHeight,
              ),
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                    title: 'Latin',
                    icon: Icons.queue_music,
                    color: Colors.orange.shade300,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
