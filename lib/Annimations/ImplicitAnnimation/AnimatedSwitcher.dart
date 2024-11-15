import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  @override
  _AnimatedSwitcherExampleState createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool _showFirst = true;

  void _switchWidget() {
    setState(() {
      _showFirst = !_showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedSwitcher Example")),
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: _showFirst
              ? Container(
            key: ValueKey(1),
            color: Colors.blue,
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: Text(
              "First",
              style: TextStyle(color: Colors.white),
            ),
          )
              : Container(
            key: ValueKey(2),
            color: Colors.red,
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: Text(
              "Second",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _switchWidget,
        child: Icon(Icons.switch_left),
      ),
    );
  }
}
