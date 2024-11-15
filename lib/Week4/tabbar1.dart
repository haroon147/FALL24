import 'package:flutter/material.dart';

class Tabbar1 extends StatelessWidget {
  const Tabbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
      ),
      title: Text("Hello World"),
      subtitle: Text("Heyyyyy"),
      trailing: Icon(Icons.add),
    );
  }
}
