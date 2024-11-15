import 'package:classweek2/navigationandrouting/screentwo.dart';
import 'package:flutter/material.dart';

class Navigationhome extends StatefulWidget {
  const Navigationhome({super.key});

  @override
  State<Navigationhome> createState() => _NavigationhomeState();
}

class _NavigationhomeState extends State<Navigationhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ScreenOne"),),

        body: Center(
          child: InkWell(
            onTap: (){
              // Navigator.push((context), MaterialPageRoute(builder: (context)=> NavigateTwo(),),);
            },
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateTwo()));
            },
              child: Text("Screen 1"),
                    ),
          ),
      ),
    ),
    );
  }
}
