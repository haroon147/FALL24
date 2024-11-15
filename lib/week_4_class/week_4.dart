import 'package:flutter/material.dart';

import 'Tab2.dart';
import 'Tab3.dart';

class week_4_practice extends StatefulWidget {
  const week_4_practice({super.key});

  @override
  State<week_4_practice> createState() => _week_4_practiceState();
}

class _week_4_practiceState extends State<week_4_practice> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.8,
              leading: Icon(Icons.home),
              actions: [
                Icon(Icons.chat),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_add),
                )
              ],
              backgroundColor: Colors.blueAccent,
              title: Text("AppBAr"),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Hello',
                ),
                Tab(
                  icon: Icon(Icons.accessibility),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                )
              ]),
            ),
            body: TabBarView(children: [
              Container(
                color: Colors.yellow,
                width: screenwidth * 1,
                height: screenheight * 0.5,
                child: SingleChildScrollView(
                  child: Container(
                    height: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Container(
                        //   color: Colors.purple,
                        //   height: screenheight*1,
                        //   width: screenwidth*0.1,
                        // ),
                        Text(
                          "A",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                        ElevatedButton.icon(
                          icon: Icon(Icons.forward),
                          onPressed: () {},
                          label: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Tab2(),
              Tab3(),
              Center(child: Text("Tab4")),
            ]),
            // body: Container(
            //   color: Colors.yellow,
            //   width: screenwidth*1,
            //   height: screenheight*0.5,
            //   child: SingleChildScrollView(
            //     child: Container(
            //       height: 400,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           // Container(
            //           //   color: Colors.purple,
            //           //   height: screenheight*1,
            //           //   width: screenwidth*0.1,
            //           // ),
            //           Text("A", style: TextStyle(
            //             fontWeight: FontWeight.w900,
            //             fontSize: 25,
            //           ),),
            //           ElevatedButton(
            //             onPressed: () {},
            //             child: Icon(Icons.add),
            //           ),
            //           OutlinedButton(
            //             onPressed: () {},
            //             child: Icon(Icons.add),
            //           ),
            //           TextButton(
            //             onPressed: () {},
            //             child: Icon(Icons.add),
            //           ),
            //           ElevatedButton.icon(
            //             icon: Icon(Icons.forward),
            //             onPressed: () {},
            //             label: Icon(Icons.add),
            //           ),
            //
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
