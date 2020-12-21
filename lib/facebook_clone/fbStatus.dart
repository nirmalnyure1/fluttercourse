import 'package:flutter/material.dart';

class FbStatus extends StatelessWidget {
  bool showSingleImage;
  bool showDoubleImage;

  FbStatus({this.showSingleImage = false, this.showDoubleImage = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/ny.jpg',
              ),
            ),
            title: RichText(
              text: TextSpan(
                text: 'Nirmal Nyure',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' is with ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: 'Ashish',
                  ),
                ],
              ),
            ),
            subtitle: Row(
              children: [
                Text('27m.'),
                Icon(
                  Icons.people,
                  color: Colors.grey.shade900,
                )
              ],
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Text(
            'Im feeling happy today  in flutter class',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          showSingleImage
              ? Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image(
                    image: AssetImage('images/ny.jpg'),
                  ),
                )
              : SizedBox.shrink(),
          showDoubleImage
              ? Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage('images/bike.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Image(
                            image: AssetImage('images/bike.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Divider(
              height: 5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text('Like'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.comment,
                    color: Colors.green.shade600,
                  ),
                  Text('Comment'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share, color: Colors.purple),
                  Text('share'),
                ],
              ),
            ],
          ),
          Divider(
            height: 5,
          )
        ],
      ),
    );
  }
}
