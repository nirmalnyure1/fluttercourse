import 'package:flutter/material.dart';
import 'package:professional_class/widget/listViewWidget.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ButtonWidget')),
      body: Center(
        child: RaisedButton.icon(
          elevation: 10,
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return ListViewWidget();
                },
              ),
            );
            // Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.headset,
            color: Colors.red.shade400,
          ),
          label: Text(
            'click to play SONGS',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    /*IconButton(
      padding: EdgeInsets.all(40.0),
      icon: Icon(Icons.account_balance),
      onPressed: (){},
      );*/

    /*FlatButton(
      onPressed: (){

      },
      child: Text('Click Me'),
    );*/
    /*RaisedButton(
      onPressed: () {
        log('button is clicked');
      },
      elevation: 10,
      child: Text('Click Me',
        style: TextStyle(
          color: Colors.white
        ),
      ),
      color: Colors.purple,
    );*/
  }
}
