import 'package:flutter/material.dart';
import 'package:my_app/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          toolbarHeight: 40,
          title: Text('Registration'),
          centerTitle: true,
        ),
        body: formScreen(),
      ),
    );
  }
}
