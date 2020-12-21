import 'package:flutter/material.dart';
import 'package:professional_class/widget/form/digitalClock.dart';
import 'package:professional_class/widget/search.dart';

class FirstLayoutDesignWidget extends StatefulWidget {
  @override
  _FirstLayoutDesignWidgetState createState() =>
      _FirstLayoutDesignWidgetState();
}

class _FirstLayoutDesignWidgetState extends State<FirstLayoutDesignWidget> {
  int selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white);

  List<Widget> _widgetOption = <Widget>[
    Search(), //first bottom bar
    // Text('Index 0: home', style: optionStyle),
    DigitalClock(),
    // Text('Index 1: Digital Clock', style: optionStyle),
    Text('Index 2: Your library', style: optionStyle),
  ];

  void _onTapedItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: _widgetOption.elementAt(selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: Colors.white),
            selectedItemColor: Colors.white,
            iconSize: 25,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                title: Text('Library'),
              ),
            ],
            currentIndex: selectedIndex,
            onTap: _onTapedItemSelected),
      ),
    );
  }
}
