import 'dart:convert';

import 'package:api_test/modelClass.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show get;

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  getapi() async {
    var link = Uri.parse('https://simplifiedcoding.net/demos/marvel/');
    var respnse1 = await http.get(link);
    return jsonDecode(respnse1.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API testing')),
      body: FutureBuilder(
        future: getapi(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            print('Network not found');
          }
          if (snapshot.hasData) {
            return Modelclass(modelList: snapshot.data);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
