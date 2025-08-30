import 'package:flutter/material.dart';

class ListViewBuilderEx extends StatefulWidget {
  const ListViewBuilderEx({super.key});

  @override
  State<ListViewBuilderEx> createState() => _ListViewBuilderExState();
}

class _ListViewBuilderExState extends State<ListViewBuilderEx> {
  @override
  Widget build(BuildContext context) {
    // A list of names
    final List<String> names = [
      "Rahul",
      "Priya",
      "Amit",
      "Sneha",
      "Karan",
      "Neha",
      "Vikas",
      "Riya",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("ListView Example")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              names[index],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Print in console when tapped
              print("${names[index]} tapped");
            },
          );
        },
      ),
    );
  }
}
