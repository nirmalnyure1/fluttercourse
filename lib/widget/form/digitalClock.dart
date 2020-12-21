import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  DateTime dateTime = new DateTime.now();
  double paddingValue = 10;
  List<String> month = [
    'Jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'agu',
    'sep',
    'oct',
    'nov',
    'dec'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                dateTime.year.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                month[dateTime.month - 1],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                dateTime.day.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                dateTime.hour.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                dateTime.minute.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                dateTime.second.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(paddingValue),
              child: Text(
                dateTime.millisecond.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
