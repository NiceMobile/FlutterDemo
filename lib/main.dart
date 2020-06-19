import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation',
//            onPressed: () => debugPrint('Navigation button is press'),
//          ),
          title: Text('NINGHAO'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is press'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
//            Icon(
//              Icons.local_florist,
//              size: 128.0,
//              color: Colors.black12,
//            ),
            ListViewDemo(),
//            Icon(
//              Icons.change_history,
//              size: 128.0,
//              color: Colors.black12,
//            ),
            BasicDemo(),
//            Icon(
//              Icons.directions_bike,
//              size: 128.0,
//              color: Colors.black12,
//            ),
            LayoutDemo(),

            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
