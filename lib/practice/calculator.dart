import 'package:flutter/material.dart';
class  CalculatorView extends StatelessWidget {
  const  CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Column(
          children: [

          TextField(),
            //calculator display
            //Expand
            //calculator buttons

          ],
        ),
      ),
    );
  }
}
