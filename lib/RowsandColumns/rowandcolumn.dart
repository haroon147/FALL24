// import 'package:flutter/material.dart';
// class row_column extends StatefulWidget {
//   const row_column({super.key});
//   @override
//   State<row_column> createState() => _row_columnState();
// }
// class _row_columnState extends State<row_column> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     var screenWidth = MediaQuery.of(context).size.width;
//     var screenheight = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           drawer: Drawer(
//             child: ListView(
//               children: [
//                 DrawerHeader(child: Column(
//                   children: [
//                     ClipOval(
//                       child: Image(
//                         width: 100,
//                         height: 100,
//                         image: AssetImage("assets/dice-images/dice-1.png",),
//                       ),
//                       clipBehavior:Clip.antiAliasWithSaveLayer,
//                       clipper:ClipOval(
//
//                       ),
//                     ),
//                     Text("Haroon"),
//
//                   ],
//                 ),
//                   duration: Duration(seconds: 5),
//                 ),
//                 ListTile(
//                   title: Text("Home"),
//                   leading: Icon(Icons.home),
//                   subtitle: Text("Press me"),
//                 )
//               ],
//             ),
//           ),
//           appBar: AppBar(
//             bottom: TabBar(tabs: [
//               Tab(icon: Icon(Icons.accessibility),),
//               Tab(icon: Icon(Icons.accessibility),),
//               Tab(icon: Icon(Icons.accessibility),),
//               Tab(icon: Icon(Icons.accessibility),)
//             ]),
//           ),
//           body: TabBarView(children: [
//             Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("A"),
//                 Text("B"),
//                 Text("C"),
//                 Text("D"),
//                 ElevatedButton(onPressed: (){}, child: Text("Button"),),
//                 OutlinedButton(onPressed: (){}, child: Text("Button"),),
//                 Badge(label: Icon(Icons.add),)
//
//
//               ],
//             ),
//             Center(child: Text("Tab2"),),
//             Center(child: Text("Tab3"),),
//             Center(child: Text("Tab4"),),
//
//           ])
//         ),
//       ),
//     );
//
//   }
// }
