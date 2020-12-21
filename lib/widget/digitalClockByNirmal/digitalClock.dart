import 'dart:async';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  double seconds;

  _currentTime() {
    //print(formatDate(DateTime.now(), [yy, ' - ', MM, ' - ', dd]));
    return "${formatDate(DateTime.now(), [hh, ' : ', nn, ' : ', ss])}";
  }

  _currentDate() {
    return "${formatDate(DateTime.now(), [yy, ' - ', MM, ' - ', dd])}";
  }

  _triggerUpdate() {
    Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) => setState(
        () {},
      ),
    );
  }

  void initState() {
    super.initState();
    _triggerUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.alarm,
              color: Colors.pink.shade900,
              size: 200,
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Text(
                _currentDate(),
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.red.shade900),
              ),
            ),
            Card(
              elevation: 40,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              shadowColor: Colors.red.shade200,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  _currentTime(),
                  style: GoogleFonts.roboto(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.pink.shade900),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The Relentless Time',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.pink.shade900,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- design by nirmal',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.pink.shade100,
                fontSize: 10,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
