import 'package:flutter/material.dart';
import 'package:flutter_project/pages/first_page.dart';
import 'package:flutter_project/pages/home_page.dart';
import 'package:flutter_project/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        "/homepage": (context) => HomePage(),
        "/settingpage": (context) => SettingPage(),
      },
    );
  }
}
