import 'package:flutter/material.dart';
import 'package:professional_class/model/myCardModel.dart';

class MyCard extends StatelessWidget {
  MyCardModel myCardModel = MyCardModel();
  MyCard({this.myCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      height: 100,
      padding: EdgeInsets.all(15),
      color: myCardModel.color,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                myCardModel.title,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              )),
          Expanded(
              flex: 1,
              child: Icon(
                myCardModel.icon,
                color: Colors.white,
                size: 50,
              )),
        ],
      ),
    );
  }
}
