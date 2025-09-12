// Develop a three-screen app with a home, details, and settings screen. Use Navigator.pushNamed for navigation, and pass data between screens.

import 'package:assignment_que/task%2022/second22.dart';
import 'package:flutter/material.dart';

class ThreeScreens extends StatefulWidget {
  const ThreeScreens({super.key});

  @override
  State<ThreeScreens> createState() => _ThreeScreensState();
}

class _ThreeScreensState extends State<ThreeScreens> {
  TextEditingController txt1 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task22-Home"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              controller: txt1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Any Text",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen22(data: txt1.text),
                  ),
                );
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
