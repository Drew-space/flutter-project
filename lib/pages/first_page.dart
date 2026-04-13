import 'package:flutter/material.dart';
import 'package:flutter_project/pages/home_page.dart';
import 'package:flutter_project/pages/profile_page.dart';
import 'package:flutter_project/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // method to update the selcted index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // create an integer to tracck keep track of current page to display
  int _selectedIndex = 0;

  // list of pages we have in out app
  final List _pages = [
    // hompage
    HomePage(),

    // profile page
    ProfilePage(),

    // setting page
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
