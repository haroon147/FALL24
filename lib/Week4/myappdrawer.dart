import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
         DrawerHeader(
           padding: EdgeInsets.zero,
           child:
         UserAccountsDrawerHeader(
           margin: EdgeInsets.zero,
           currentAccountPicture: CircleAvatar(),
             accountName:Text("Hello"),
              accountEmail: Text("riphah@gmail.com")
         ),),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          )
        ],
      ),
    );
  }
}
