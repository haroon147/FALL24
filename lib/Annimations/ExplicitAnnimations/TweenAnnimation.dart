import 'package:flutter/material.dart';


class TweenAnimationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TweenAnimationScreen(),
    );
  }
}

class TweenAnimationScreen extends StatefulWidget {
  @override
  _TweenAnimationScreenState createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      
      duration: const Duration(seconds: 2),
      animationBehavior: AnimationBehavior.preserve,
      vsync: this,
    );

    // Define the Tween and apply it to the AnimationController
    _animation = Tween<double>(begin: 0.0, end: 200.0).animate(_controller)
      ..addListener(() {
        setState(() {}); // Update the UI on every tick of the animation
      });

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tween Animation Example')),
      body: Center(
        child: Container(
          width: _animation.value, // The animated value
          height: _animation.value, // The animated value
          color: Colors.blue,
        ),
      ),
    );
  }
}
