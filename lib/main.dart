import 'package:classweek2/Annimations/Annimation1.dart';
import 'package:classweek2/Listview%20and%20Gridview/listviewandgridview.dart';
import 'package:classweek2/image_courosal/carousal.dart';
import 'package:classweek2/practice/calculator.dart';
import 'package:classweek2/theme/theme.dart';
import 'package:classweek2/week1project/diceroller.dart';
import 'package:classweek2/week6.dart';
import 'package:classweek2/week_4_class/week_4.dart';
import 'package:flutter/material.dart';
import 'Annimations/ImplicitAnnimation/AnimatedSwitcher.dart';
import 'RowsandColumns/rowandcolumn.dart';
import 'Week4/appbar.dart';
import 'homescreen.dart';
import 'image_courosal/courousal.dart';
import 'navigationandrouting/navigationhome.dart';
import 'week1project/gradientcontainer.dart';
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

