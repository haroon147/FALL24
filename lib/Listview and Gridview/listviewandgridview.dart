import 'package:flutter/material.dart';

class ListViewAndGridview extends StatefulWidget {
  const ListViewAndGridview({super.key});

  @override
  State<ListViewAndGridview> createState() => _ListViewAndGridviewState();
}

class _ListViewAndGridviewState extends State<ListViewAndGridview> {
  List<UserData> userData = [
    UserData('haroon', '147haroon@gmail.com'),
    UserData('honey', '147haroon@gmail.com'),
    UserData('pakistan', '147haroon@gmail.com'),
    UserData('class', '147haroon@gmail.com'),
    UserData('shantu', '147haroon@gmail.com'),
    UserData('mantu', '147haroon@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              margin: EdgeInsets.all(16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Item Image
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                    child: Image.network(
                      'https://via.placeholder.com/150', // Replace with actual image URL
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Item Details
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stylish Shoes', // Item name
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '\$59.99', // Item price
                          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                        SizedBox(height: 16.0),
                        // "Add to Cart" Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                // Add to cart action
                              },
                              icon: Icon(Icons.shopping_cart),
                              label: Text('Add to Cart'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
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
