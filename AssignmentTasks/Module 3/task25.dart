//Build a to-do list app where users can add tasks. Use ListView.builder to display the list of tasks and allow each task to be removed with a swipe gesture

import 'package:flutter/material.dart';

class Task25 extends StatefulWidget {
  const Task25({super.key});

  @override
  State<Task25> createState() => _Task25State();
}

class _Task25State extends State<Task25> {
  List image = [
    "https://magicdecor.in/wallpaper/a-painting-of-a-man-riding-a-horse/?srsltid=AfmBOorNnAvW1wrIavp5O_BHzVeJvQsL0IPHY3tKZyWydab1Ng7HfIrv",
    "https://magicdecor.in/wallpaper/a-painting-of-a-man-riding-a-horse/?srsltid=AfmBOorNnAvW1wrIavp5O_BHzVeJvQsL0IPHY3tKZyWydab1Ng7HfIrv",
    "https://magicdecor.in/wallpaper/a-painting-of-a-man-riding-a-horse/?srsltid=AfmBOorNnAvW1wrIavp5O_BHzVeJvQsL0IPHY3tKZyWydab1Ng7HfIrv",
    "https://magicdecor.in/wallpaper/a-painting-of-a-man-riding-a-horse/?srsltid=AfmBOorNnAvW1wrIavp5O_BHzVeJvQsL0IPHY3tKZyWydab1Ng7HfIrv",
  ];
  List name = ["Mahabharat", "Mahabharat", "Mahabharat", "Mahabharat"];
  List bio = ["Watch it...", "Watch it...", "Watch it...", "Watch it..."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe Gesture"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(image[index])),
            title: Text(name[index]),
            subtitle: Text(bio[index]),
          );
        },
      ),
    );
  }
}
