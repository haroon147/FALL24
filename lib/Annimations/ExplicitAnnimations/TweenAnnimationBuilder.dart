import 'package:flutter/material.dart';

class TweenAnnimationBuilder extends StatefulWidget {
  const TweenAnnimationBuilder({super.key});

  @override
  State<TweenAnnimationBuilder> createState() => _TweenAnnimationBuilderState();
}

class _TweenAnnimationBuilderState extends State<TweenAnnimationBuilder> {
  double targetValue =100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween(begin: 0.00 , end: targetValue),
            duration: Duration(seconds: 1),
            builder: (BuildContext ontext, double Size, Widget? child){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    targetValue = targetValue == 100 ? 500 :100;
                  });
                },
                child: Container(
                  width: Size,
                  height: Size,
                  color: Colors.red,
                ),
              );
            }
            )
    ),
    );
  }
}
// TweenAnimationBuilder<Color?>( // <-- Color might be null
// tween: ColorTween(begin: Colors.yellow, end: Colors.blue),
// duration: Duration(seconds: 5),
// builder: (_, Color? color, __) { // <-- Color might be null
// return Container(
// width: 200.0,
// height: 200.0,
// decoration: BoxDecoration(
// image: DecorationImage(
// colorFilter: ColorFilter.mode(
// color ?? Colors.transparent, // <-- If color is null - pass transparent
// BlendMode.modulate,
// ),
// image: NetworkImage(
// 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png'),
// ),
// ),
// child: Container(),
// );
// },
// ),


//
//
// TweenAnimationBuilder(
// tween: Tween(begin: 0.00, end: targetValue),
// duration: Duration(seconds: 1),
// builder: (BuildContext context , double Size, Widget? child){
// return IconButton(
// iconSize: Size,
// color: Colors.orange,
// onPressed: (){
// setState(() {
// targetValue = targetValue == 100? 250 :100;
// });
// }, icon:const Icon(Icons.flutter_dash)
// );
// }
// )