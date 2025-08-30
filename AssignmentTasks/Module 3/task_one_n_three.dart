import 'package:flutter/material.dart';

class HomeScreenEx extends StatefulWidget {
  const HomeScreenEx({super.key});

  @override
  State<HomeScreenEx> createState() => _HomeScreenExState();
}

class _HomeScreenExState extends State<HomeScreenEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is AppBar'), centerTitle: true),
      body: Container(
        color: Colors.blueAccent,
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
