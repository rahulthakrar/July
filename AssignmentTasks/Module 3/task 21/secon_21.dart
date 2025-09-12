import 'package:flutter/material.dart';

class Second21 extends StatefulWidget {
  const Second21({super.key});

  @override
  State<Second21> createState() => _Second21State();
}

class _Second21State extends State<Second21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task21"), backgroundColor: Colors.blue),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Welcome Dhaval Rathod",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
