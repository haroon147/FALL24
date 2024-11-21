import 'package:flutter/material.dart';
class TweenPractice extends StatefulWidget {
  const TweenPractice({super.key});

  @override
  State<TweenPractice> createState() => _TweenPracticeState();
}

class _TweenPracticeState extends State<TweenPractice> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnnimate;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 4),);
    animation = Tween(begin: 0.0, end: 100.00).animate(animationController);
    colorAnnimate = ColorTween(begin: Colors.white10, end: Colors.purple).animate(animationController);
    
    animationController.addListener((){
      setState(() {

      });
      // print(animation.value);
    });

    animationController.forward();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: colorAnnimate.value,
          height: animation.value,
          width: animation.value,

        ),
      ),
    );
  }
}
