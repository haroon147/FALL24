import 'package:flutter/material.dart';

class newState extends StatefulWidget {
  const newState({super.key});

  @override
  State<newState> createState() => _newStateState();
}

class _newStateState extends State<newState> {
  int increment = 0;

  void incrementCounter() {
    setState(() {
      increment++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Number : $increment "),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: incrementCounter,
        ),
      ),
    );
  }
}
