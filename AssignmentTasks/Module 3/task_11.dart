import 'package:flutter/material.dart';

class CounterAppEx extends StatefulWidget {
  const CounterAppEx({super.key});

  @override
  State<CounterAppEx> createState() => _CounterAppExState();
}

class _CounterAppExState extends State<CounterAppEx> {
  int value = 0;

  // Decrement function
  void decrement() {
    setState(() {
      if (value > 0) {
        value--;
      }
    });
  }

  void increment() {
    setState(() {
      value++;
    });
  }

  // Reset function (optional)
  void reset() {
    setState(() {
      value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('This is AppBar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('The Updated value is'),
          Container(
            color: Colors.blueAccent,
            child: Text(
              '$value',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Decrement button
          FloatingActionButton(
            onPressed: decrement,
            child: Icon(Icons.remove, color: Colors.white),
            backgroundColor:
                Colors.black, // Optional: different color for decrement
          ),

          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: reset,
            child: Icon(Icons.refresh, color: Colors.white),
            backgroundColor: Colors.black,
          ),
          SizedBox(width: 10), // Space between buttons
          // Increment button (your existing button)
          FloatingActionButton(
            onPressed: increment,
            child: Icon(Icons.add, color: Colors.white),
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
