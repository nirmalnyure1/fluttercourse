import 'package:flutter/material.dart';
import 'package:professional_class/screen/news_screen.dart';
import 'package:professional_class/widget/bottomNavigationWidget.dart';
import 'package:professional_class/widget/buttonWidget.dart';
import 'package:professional_class/widget/digitalClockByNirmal/digitalClock.dart';
import 'package:professional_class/widget/firstLayoutdesignWidget.dart';
import 'package:professional_class/widget/tabBarWidget.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return TabBarWidget();
                      },
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.tab),
                    title: Text('Tab Bar'),
                    trailing: Icon(Icons.accessibility_new),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return BottomNavigationWidget();
                    },
                  ));
                },
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.navigate_before),
                    title: Text('Bottom Navigation'),
                    trailing: Icon(Icons.accessibility_new),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ButtonWidget();
                      },
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(
                      size: 50,
                      // colors: Colors.green,
                    ),
                    title: Text(
                      'Navigate ',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.green.shade700),
                    ),
                    isThreeLine: true,
                    subtitle: Text(
                      'change page\n push pop and push replacement',
                      style: TextStyle(color: Colors.green.shade400),
                    ),
                    trailing: Icon(
                      Icons.wb_cloudy,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return NewsScreen();
                      },
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(
                      size: 50,
                      textColor: Colors.green,
                    ),
                    title: Text(
                      'News Screen ',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.green.shade700),
                    ),
                    isThreeLine: true,
                    subtitle: Text(
                      'Lets start beginning from your self \n you can change the universe',
                      style: TextStyle(color: Colors.green.shade400),
                    ),
                    trailing: Icon(
                      Icons.perm_media,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return DigitalClock();
                    }),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('Digital clock'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('One-line with leading widget'),
                  ),
                ),
              ),
              /* InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return BottomNaviagtionWidhet();
                    },
                  ));

                  //scaffoldKey.currentState.showSnackBar(snackBar);
                },
                child: Card(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Bottom Naviagtion'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),*/
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return FirstLayoutDesignWidget();
                  }));
                },
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Buttom navigarion'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with both widgets'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('One-line dense ListTile'),
                  dense: true,
                ),
              ),
              Card(
                child: ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('Two-line ListTile'),
                    subtitle: Text('Here is a second line'),
                    trailing: RaisedButton(
                      onPressed: () {},
                      child: Text('dsa'),
                    )),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'),
                  trailing: Icon(Icons.access_alarm),
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('hello'),
                  trailing: Icon(Icons.accessibility_new),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('hello'),
                  trailing: Icon(Icons.accessibility_new),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
