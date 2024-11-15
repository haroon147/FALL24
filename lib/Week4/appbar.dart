import 'package:flutter/material.dart';
import 'tabbar1.dart';
import 'Tabbar2.dart';
import 'myappdrawer.dart';

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyAppDrawer(),
        appBar: AppBar(
          title: Text('TabBar Example'),
          bottom: TabBar(
            tabs: [
              Tab( icon: Icon(Icons.directions_car), text: 'Car',),
              Tab(icon: Icon(Icons.directions_transit), text: 'Transit'),
              Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tabbar1(),
            Tabbar2(),
            Center(child: Text('Bike Tab Content')),
          ],
        ),
      ),
    );
  }
}
