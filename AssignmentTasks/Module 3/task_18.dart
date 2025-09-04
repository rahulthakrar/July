//Build a feedback form with TextField widgets for entering name and comments, and a DropdownButton for selecting a feedback category

import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _commentsController = TextEditingController();

  String? selectedCategory;
  final List<String> feedbackCategories = [
    'General Feedback',
    'Bug Report',
    'Feature Request',
    'Complaint',
    'Suggestion',
    'Other',
  ];

  void submitFeedback() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Thanks for your feedback'),
          backgroundColor: Colors.green.shade200,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feedback'), centerTitle: true),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade300,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter your name here',
                    labelText: 'NAME',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _commentsController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.comment),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Give us your thoughts',
                    labelText: 'Feedback',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your feedback';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                value: selectedCategory,
                hint: Text(
                  'Select Category', // ← SHOWS WHEN NO SELECTION MADE
                  style: TextStyle(color: Colors.black54),
                ),
                style: TextStyle(color: Colors.black),
                items: feedbackCategories.map<DropdownMenuItem<String>>((
                  String value,
                ) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.black)),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value!;
                  });
                },
              ),
              ElevatedButton(onPressed: submitFeedback, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
