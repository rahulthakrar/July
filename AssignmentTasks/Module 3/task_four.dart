import 'package:flutter/material.dart';

class TextFormFieldEx extends StatefulWidget {
  const TextFormFieldEx({super.key});

  @override
  State<TextFormFieldEx> createState() => _TextFormFieldExState();
}

class _TextFormFieldExState extends State<TextFormFieldEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          ElevatedButton(onPressed: () {}, child: Text('Submit')),
        ],
      ),
    );
  }
}
