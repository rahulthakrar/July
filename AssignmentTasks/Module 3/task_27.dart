import 'package:flutter/material.dart';

class Task27 extends StatefulWidget {
  const Task27({super.key});

  @override
  State<Task27> createState() => _Task27State();
}

class _Task27State extends State<Task27> {
  var listName = ['John', 'Chris', 'White', 'Sam', 'Mathew'];
  var listJob = [
    'Flutter Developer',
    'Java Developer',
    'Python Developer',
    'iOS Developer',
    'Web Developer',
  ];
  var listImage = [
    'https://pngtree.com/free-png-vectors/avatar',
    'https://pngtree.com/free-png-vectors/avatar',
    'https://pngtree.com/free-png-vectors/avatar',
    'https://pngtree.com/free-png-vectors/avatar',
    'https://pngtree.com/free-png-vectors/avatar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Task 27',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: listName.length,
          itemBuilder: (contex, index) {
            return ListTile(
              title: Text(
                listName[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                listJob[index],
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              leading: CircleAvatar(child: Image.network(listImage[index])),
              trailing: Icon(Icons.delete),
              iconColor: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
