import 'package:flutter/material.dart';

class FbStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> story = new List();
    for (int i = 0; i < 20; i++) {
      story.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-0/p235x165/130731097_720542825508829_5613150239675653981_o.jpg?_nc_cat=103&ccb=2&_nc_sid=365331&_nc_ohc=usioM72rPn0AX9kh6yK&_nc_ht=scontent.fktm8-1.fna&tp=6&oh=a03469419233abb3506178f282e85ac1&oe=5FF591D5',
                width: MediaQuery.of(context).size.width / 4,
              ),
            ),
            Positioned(
                top: 10,
                left: 5,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue.shade500,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'images/ny.jpg',
                    ),
                  ),
                )),
            Positioned(
              bottom: 2,
              left: 5,
              child: Text(
                'nirmal nyure',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 68,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              //width: MediaQuery.of(context).size.width / 4,
              //color: Colors.grey.shade200,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'images/ny.jpg',
                      height: 70,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 25,
                    bottom: 25,
                    //right: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: Color(0xff3263FB),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 3,
                      left: 3,
                      child: Text(
                        'Create Story',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            ...story
          ],
        ),
      ),
    );
  }
}
