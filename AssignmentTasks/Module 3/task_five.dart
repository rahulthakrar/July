import 'package:flutter/material.dart';

class ResponsiveRowWidget extends StatefulWidget {
  const ResponsiveRowWidget({super.key});

  @override
  State<ResponsiveRowWidget> createState() => _ResponsiveRowWidgetState();
}

class _ResponsiveRowWidgetState extends State<ResponsiveRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // ✅ scroll left-right
        child: Row(
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.blueAccent,
              child: Text('First Container'),
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.yellowAccent,
              child: Text('Second Container'),
            ),
            Container(
              height: 200,
              width: 400,
              color: const Color.fromARGB(255, 62, 12, 52),
              child: Text('Third Container'),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
              child: Text('First Container'),
            ),
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 127, 230, 10),
              child: Text('First Container'),
            ),
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 127, 230, 10),
              child: Text('First Container'),
            ),
          ],
        ),
      ),
    );
  }
}
