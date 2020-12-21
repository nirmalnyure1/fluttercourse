import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TapBar'),
          centerTitle: true,
          bottom: TabBar(
            // controller: TabController(initialIndex: 1, vsync: null),
            indicatorColor: Colors.orange,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                child: Text('tab1 one one'),
              ),
              Tab(
                icon: Icon(Icons.add_a_photo),
                child: Text('tab1 one one'),
              ),
              Tab(
                icon: Icon(Icons.dashboard),
                child: Text('tab1 one one'),
              ),
              Tab(
                icon: Icon(Icons.directions_car),
                child: Text('tab1 one one'),
              ),
              Tab(
                icon: Icon(Icons.add_a_photo),
                child: Text('tab1 one one'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.add_a_photo),
            Icon(Icons.dashboard),
            Icon(Icons.directions_car),
            Icon(Icons.add_a_photo),
          ],
        ),
      ),
    );
  }
}
