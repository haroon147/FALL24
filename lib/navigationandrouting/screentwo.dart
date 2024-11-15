import 'package:classweek2/Dashboard/dashboard.dart';
import 'package:flutter/material.dart';
class NavigateTwo extends StatefulWidget {
  const NavigateTwo({super.key});

  @override
  State<NavigateTwo> createState() => _NavigateTwoState();
}

class _NavigateTwoState extends State<NavigateTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ScreenTwo"),),
        body: Center(
          child: Column(
            children :[
              ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Screen 2"),
            ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
        }, child: Text("Dashbaord"),
        ),
            ]
          ),
        ),
      ),
    );
  }
}
