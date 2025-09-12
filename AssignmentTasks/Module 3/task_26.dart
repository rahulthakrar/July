import 'package:flutter/material.dart';

class Task26 extends StatefulWidget {
  const Task26({super.key});

  @override
  State<Task26> createState() => _Task26State();
}

class _Task26State extends State<Task26> {
  info1(title, leading, subtitle) {
    return ListTile(title: title, leading: leading, subtitle: subtitle);
  }

  List productName = ['Pizza', 'Pizza', 'Pizza', 'Pizza', 'Pizza'];

  List productImg = [
    'https://www.vecteezy.com/free-vector/fast-food',
    'https://www.vecteezy.com/free-vector/fast-food',
    'https://www.vecteezy.com/free-vector/fast-food',
    'https://www.vecteezy.com/free-vector/fast-food',
    'https://www.vecteezy.com/free-vector/fast-food',
  ];

  List productPrice = ['20000', '20000', '20000', '20000', '20000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task 26',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: productName.length,
        itemBuilder: (context, index) {
          while (true) {
            return info1(
              Text(productName[index]),
              Image(image: NetworkImage(productImg[index])),
              Text(productPrice[index]),
            );
          }
        },
      ),
    );
  }
}
