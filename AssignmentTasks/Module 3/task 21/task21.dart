// Create a two-screen app. The first screen should have a button that navigates to the second screen. Display a welcome message on the second screen.

import 'package:assignment_que/task%2021/secon_21.dart';
import 'package:flutter/material.dart';

class TwoScreens extends StatefulWidget {
  const TwoScreens({super.key});

  @override
  State<TwoScreens> createState() => _TwoScreensState();
}

class _TwoScreensState extends State<TwoScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task21"), backgroundColor: Colors.blue),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Second21()),
            );
          },
          child: Text("Submit"),
        ),
      ),
    );
  }
}
