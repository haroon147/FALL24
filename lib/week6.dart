import 'package:flutter/material.dart';

class Week6 extends StatefulWidget {
  const Week6({super.key});

  @override
  State<Week6> createState() => _Week6State();
}

class _Week6State extends State<Week6> {
  @override
  Widget build(BuildContext context) {
    List<UserData> userData = [
      UserData('haroon', '147haroon@gmail.com'),
      UserData('honey', '147haroon@gmail.com'),
      UserData('pakistan', '147haroon@gmail.com'),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView and GridView"),),
        body: GridView.builder(
          scrollDirection: Axis.horizontal,
          // physics: ,
          shrinkWrap: false ,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 4,
          ),
          itemCount: 700,
          itemBuilder: (context, index){
            return Image.network("https://images.unsplash.com/photo-1719937206158-cad5e6775044?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: BoxFit.fill,);
          },
        ),
      ),
    );
  }
}

class UserData {
  String name;
  String email;
  UserData(this.name, this.email);
}
