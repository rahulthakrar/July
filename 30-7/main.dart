import 'package:flutter/material.dart';
import 'package:form_app/form_p.dart';

void main() {
  runApp(MaterialApp(home: homeScreen(), debugShowCheckedModeBanner: false));
}

// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Center(child: Text('Form Validator')),
        toolbarHeight: 50,
      ),
      body: Column(children: [FormP()]),
    );
  }
}
