import 'package:assignment_que/task%2022/third22.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen22 extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var data;
  // ignore: use_key_in_widget_constructors
  SecondScreen22({required this.data});
  @override
  State<SecondScreen22> createState() => _SecondScreen22State();
}

class _SecondScreen22State extends State<SecondScreen22> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task 22 - Details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              "Home Screen Data is: ${widget.data}",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 18),
            TextFormField(
              controller: txt1,
              decoration: InputDecoration(label: Text('Enter Name')),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: txt2,
              decoration: InputDecoration(label: Text('Enter Surname')),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen22(
                      firstname: txt1.text,
                      secondname: txt2.text,
                    ),
                  ),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
