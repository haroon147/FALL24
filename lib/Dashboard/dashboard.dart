import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  final List dashboardData = const [
    {
      "id": 1,
      "title": "videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 2,
      "title": "Subjects",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
    {
      "id": 3,
      "title": "Chat",
      "icon": Icons.chat,
      "background_color": Colors.purple,
    },
    {
      "id": 4,
      "title": "settings",
      "icon": Icons.settings,
      "background_color": Colors.blue,
    },
    {
      "id": 5,
      "title": "videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 6,
      "title": "Subjects",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(shadowColor: Colors.purple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                onDetailsPressed: (){
                },
                otherAccountsPictures:
                const [
                  CircleAvatar(),
                ],
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black54,
                    Colors.blueAccent
                  ])
                ),
                currentAccountPicture: const CircleAvatar(),
                  currentAccountPictureSize: const Size(50,50),
                  accountName: const Text("Hello "),
                  arrowColor: Colors.black,
                  accountEmail: const Text('email@gmail.com'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            "Dashboard",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )),
              child: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text(
                    "DashBoard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Hey iam Behinds",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.dangerous),
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: const EdgeInsets.all(30),
              children: [
                ...dashboardData.map(
                  (data) {
                    return Container(
                      decoration: BoxDecoration(
                        color: data['background_color'],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 5),
                            color:
                                Theme.of(context).primaryColor.withOpacity(.2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              data["icon"],
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            data["title"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
