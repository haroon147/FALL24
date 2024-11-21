import 'package:flutter/material.dart';

class RotationAnnimation extends StatefulWidget {
  const RotationAnnimation({super.key});

  @override
  State<RotationAnnimation> createState() => _RotationAnnimationState();
}

class _RotationAnnimationState extends State<RotationAnnimation> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          alignment: Alignment.center,
            turns: Tween<double>(begin: 0, end: 1).animate(_animationController),
            child: Container(
            height: 200,
          width: 200,
          color: Colors.red,
        ),
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if (_animationController.isAnimating){
          _animationController.stop();
        }
        else{
          _animationController.repeat();
        }
      }, child: const Icon(Icons.stop_circle),),
    );
  }
}
