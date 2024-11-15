import 'package:classweek2/Annimations/Annimation1.dart';
import 'package:flutter/material.dart';
import 'Annimations/ImplicitAnnimation/AnimatedSwitcher.dart';
import 'package:classweek2/Dashboard/dashboard.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => AnnimationHome(),
        'Dashboard': (context) => Dashboard(),
        'AnimatedSwitcherExample': (context) => AnimatedSwitcherExample(),
      }
    );
  }
}

