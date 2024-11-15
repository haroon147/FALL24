import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Demo',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blue,
        // Sets the main color used in the app
        scaffoldBackgroundColor: Colors.white, // Background color for app screens
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Demo'),
      ),
      body: Center(
        child: Text(
          'Welcome to Flutter!',
          // style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
