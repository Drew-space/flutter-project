import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"), backgroundColor: Colors.green),
      body: Center(
        child: ElevatedButton(
          child: Text("welcome to second page click to go First Page"),
          onPressed: () {
            Navigator.pushNamed(context, "/firstpage");
          },
        ),
      ),
    );
  }
}
