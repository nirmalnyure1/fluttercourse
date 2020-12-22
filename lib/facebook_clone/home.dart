import 'package:flutter/material.dart';
import 'package:professional_class/facebook_clone/fbStatus.dart';
import 'package:professional_class/facebook_clone/fbStory.dart';
import 'package:professional_class/facebook_clone/whatsInMind.dart';
import 'package:professional_class/providerExample/view.dart';

import 'createRoom.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return View();
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: WhatsInMind(),
          ),
        ),
        Container(
          height: 10,
          color: Color(0xffc9ccd2),
        ),
        CreateRoom(),
        Container(
          height: 10,
          color: Color(0xffc9ccd2),
        ),
        FbStory(),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 10,
            color: Color(0xffc9ccd2),
          ),
        ),
        FbStatus(
          showSingleImage: true,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 10,
            color: Color(0xffc9ccd2),
          ),
        ),
        FbStatus(
          showDoubleImage: true,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 10,
            color: Color(0xffc9ccd2),
          ),
        ),
        FbStatus(
          showDoubleImage: true,
          showSingleImage: true,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 10,
            color: Color(0xffc9ccd2),
          ),
        ),
        FbStatus(),
        FbStatus(),
      ],
    );
  }
}
