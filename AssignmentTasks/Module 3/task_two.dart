import 'package:flutter/material.dart';

class TaskTwoEx extends StatefulWidget {
  const TaskTwoEx({super.key});

  @override
  State<TaskTwoEx> createState() => _TaskTwoExState();
}

class _TaskTwoExState extends State<TaskTwoEx> {
  int value = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('This is AppBar'),
        centerTitle: true,
      ),
      body : Column(
        children: [
          Text('The Updated value is'),
          Container(
            color: Colors.blueAccent,
            child: Text('$value' , style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          value++;
        });
      },
        child: Icon(Icons.add),
      ),
    );
  }
}
