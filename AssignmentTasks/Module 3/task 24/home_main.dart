// Design a bottom navigation bar with three tabs: News, Messages, and Profile. Change the displayed content based on the selected tab

import 'package:assignment_que/task%2024/message.dart';
import 'package:assignment_que/task%2024/news.dart';
import 'package:assignment_que/task%2024/profile.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectindex = 0;
  final List _pages = [newsDisplay(), MessageScreen(), ProfileScreen()];

  clicked(int val) {
    setState(() {
      _selectindex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task24"), backgroundColor: Colors.blue),
      body: _pages[_selectindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "News",
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: "Profile",
            backgroundColor: Colors.greenAccent,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectindex,
        selectedItemColor: Colors.black,
        iconSize: 25,
        elevation: 5,
        onTap: clicked,
      ),
    );
  }
}
