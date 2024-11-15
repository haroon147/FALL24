import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: 'background',
        child: Container(
          width: 400,
          height: 400,
          child: Image(image: AssetImage("assets/dice-images/dice-1.png"),),
        ),
      ),
    );
  }
}
