import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/dashboard');
              }, child: Text("Dashboard"),),
              ElevatedButton(onPressed: (){}, child: Text("Listview and GridView"),),
              ElevatedButton(onPressed: (){}, child: Text("DiceRoller"),),

            ],
          ),
        ),
      ),
    );
  }
}
