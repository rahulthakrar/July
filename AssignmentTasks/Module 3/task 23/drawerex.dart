//  Create a navigation drawer that allows switching between three different screens: Home, Profile, and Settings

import 'package:assignment_que/task%2023/home.dart';
import 'package:assignment_que/task%2023/profile.dart';
import 'package:assignment_que/task%2023/setting.dart';
import 'package:flutter/material.dart';

class Drawerex extends StatefulWidget {
  const Drawerex({super.key});

  @override
  State<Drawerex> createState() => _DrawerexState();
}

class _DrawerexState extends State<Drawerex> {
  int _selectindex = 0;
  final List<Widget> _screen = [HomeScreen(), ProfilePage(), SettingScreen()];
  List pagetitle = ["Home", "Profile", "Setting"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(pagetitle[_selectindex]),
      ),
      body: _screen[_selectindex],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Raghuwanshi"),
              accountEmail: Text("raghuwanshi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                child: Text("R", style: TextStyle(fontSize: 40)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                setState(() {
                  _selectindex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_off),
              title: Text("Profile"),
              onTap: () {
                setState(() {
                  _selectindex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                setState(() {
                  _selectindex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
