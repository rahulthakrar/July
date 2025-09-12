import 'package:flutter/material.dart';

class newsDisplay extends StatefulWidget {
  const newsDisplay({super.key});

  @override
  State<newsDisplay> createState() => _newsDisplayState();
}

class _newsDisplayState extends State<newsDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, child: Text("News Page"));
  }
}
