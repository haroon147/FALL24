import 'package:classweek2/Annimations/Rough/file2.dart';
import 'package:flutter/material.dart';

import 'ExplicitAnnimations/RotationAnnimation.dart';
import 'ImplicitAnnimation/AnimatedSwitcher.dart';
import 'ImplicitAnnimation/AnnimatedOpacity.dart';
import 'ImplicitAnnimation/AnnimatedContainer.dart';
import 'ImplicitAnnimation/Annimatedpaddingposition.dart';
import 'detailpage.dart';
class AnnimationHome extends StatefulWidget {
  const AnnimationHome({super.key});

  @override
  State<AnnimationHome> createState() => _AnnimationHomeState();
}



class _AnnimationHomeState extends State<AnnimationHome> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AnimatedContainerExample()));
      }, child: Text("AnnimatedContainer"),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AnimatedOpacityExample()));
            }, child: Text("AnnimatedOpacity"),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AnimatedAlignPaddingPositionedExample()));
            }, child: Text("AnniMatedAlignPaddingPosition"),),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'AnimatedSwitcherExample');
            }, child: Text("AnimatedSwitcher"),),
            RoundButton(text: "Hello", onTap: () {  }, ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RotationAnnimation()));
            }, child: Text("RotationAnnimation"),),




          ],
        ),
      ) ,
    );
  }
}
// }
// Center(
// child:
// AnimatedCrossFade(firstChild: Container(
// height: height,
// width: width,
// color: color,
//
// ), secondChild: Container(
// height: 500,
// width: 500,
// color: Colors.blue,
//
// ) ,
// firstCurve: Curves.bounceInOut,
// secondCurve: Curves.linear,
// crossFadeState: state ,
// duration: Duration(seconds: 1),
// ),
//
// )
// child: TweenAnimationBuilder(
// tween: Tween<double>(
// begin: 0, end: 150),
// duration: Duration(seconds: 3),
// builder: (context, size, _) {
// return IconButton(
// icon: Icon(Icons.add),
// onPressed: () {
// setState(() {
// targetValue = targetValue == 40 ? 150 : 40;
// });
// },
// );
// },
// ),

// void initState() {
//   // TODO: implement initState
//   _animationController = AnimationController(
//     duration: Duration(seconds: 1),
//     vsync: this
//   );
//
//   _animationController.repeat();
// }


// double width = 200;
// double height = 300;
// Color color = Colors.red;
// double opacity = 0.2;
// double targetValue = 40;
// CrossFadeState state = CrossFadeState.showFirst;


// Material(
// child: Scaffold(
// body: Center(
// child: RotationTransition(
// turns: Tween<double>(begin: 0, end :1).animate(_animationController),
// child: Container(
// height: 200,
// width: 200,
// color: Colors.red,
// ),),
// ),
// floatingActionButton: FloatingActionButton(onPressed: () {
// setState(() {
// state = state == CrossFadeState.showFirst
// ? CrossFadeState.showSecond
//     : CrossFadeState.showFirst;
// // width = width == 200 ? 300 : 200;
// // height = height == 300 ? 300 : 200;
// // color = color == Colors.red ? Colors.purple : Colors.red;
// // opacity = opacity == 0.2 ? 0.4 : 0.2;
// });
// },
//
// child: Icon(Icons.ad_units),
// ),
// ),
// );