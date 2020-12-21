import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 30);

  List<Widget> _widgetOption = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: School', style: optionStyle),
    Text('Index 2: College', style: optionStyle),
    Text('Index 3: Business', style: optionStyle),
    Text('Index 4: College', style: optionStyle),
    Text('Index 5: Business', style: optionStyle)
  ];

  void _onTapedItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation view'),
      ),
      body: Center(child: _widgetOption.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.green),
          selectedItemColor: Colors.green,
          iconSize: 25,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.satellite),
              title: Text('College'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.satellite),
              title: Text('College'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
          ],
          currentIndex: selectedIndex,
          onTap: _onTapedItemSelected),
    );
  }
}
