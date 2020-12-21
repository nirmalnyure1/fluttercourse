import 'package:flutter/material.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _rooms = new List();
    for (int i = 0; i < 20; i++) {
      _rooms.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/ny.jpg'),
              ),
              Positioned(
                  top: 35,
                  bottom: 0,
                  left: 35,
                  right: 0,
                  child: Container(
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(
                        Icons.brightness_1,
                        color: Colors.green,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      );
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 60,
              child: OutlineButton.icon(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30),
                ),
                onPressed: null,
                icon: Icon(Icons.video_call, color: Colors.purple[600]),
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'create',
                      style: TextStyle(color: Color(0xff1a76e5)),
                    ),
                    Text(
                      'room',
                      style: TextStyle(color: Color(0xff1a76e5)),
                    ),
                  ],
                ),
              ),
            ),
            ..._rooms
          ],
        ),
      ),
    );
  }
}
