import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> names = ["Drew", "Tech", "Flutter"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App Bar', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlue,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: Colors.white),
            ),
          ],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) =>
                ListTile(title: Text(names[index])),
          ),
        ),
      ),
    );
  }
}
