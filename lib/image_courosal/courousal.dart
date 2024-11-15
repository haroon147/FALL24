import 'package:flutter/material.dart';

import '../Dashboard/dashboard.dart';

class ImageCourousal extends StatefulWidget {
  const ImageCourousal({super.key});

  @override
  State<ImageCourousal> createState() => _ImageCourousalState();
}

class _ImageCourousalState extends State<ImageCourousal> {
  late final PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.50
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Corousal"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 7,
                controller: pageController,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                      animation: pageController,
                      builder: (context, index) {
                        return InkWell(
                          // onDoubleTap: (){
                          //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                          // },
                          // onTap: (){
                          //   showDialog (context: context,
                          //       builder:(context) => AlertDialog(
                          //         title: Text("i am dialog box"),
                          //         actions: [
                          //           Elev
                          //         ],
                          //       )
                          //   );
                          // },
                          // onTap: (){
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(content: Text("hey i am there bro"),)
                          //   );
                          // },
                          child: Container(
                            height: 200,
                            margin: const EdgeInsets.only(left: 40,top: 10,right: 40),
                            color: Colors.blue,
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
