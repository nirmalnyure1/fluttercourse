import 'package:flutter/material.dart';
import 'package:professional_class/widget/form/formModel.dart';

class Result extends StatelessWidget {
  Model model;

  Result({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Form'),
      ),
      body: Column(
        children: <Widget>[
          Text(model.firstName),
          Text(model.lastName),
          Text(model.email),
          Text(model.address),
          Text(model.password),
        ],
      ),
    );
  }
}
