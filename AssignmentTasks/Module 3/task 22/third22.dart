import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThirdScreen22 extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var firstname;
  // ignore: prefer_typing_uninitialized_variables
  var secondname;
  // ignore: use_key_in_widget_constructors
  ThirdScreen22({required this.firstname, required this.secondname});

  @override
  State<ThirdScreen22> createState() => _ThirdScreen22State();
}

class _ThirdScreen22State extends State<ThirdScreen22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task 22 - Settings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Details Screen Data is: ${widget.firstname}",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 15),
            Text(
              "Details Screen Data is: ${widget.secondname}",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
