import 'package:flutter/material.dart';

// ignore: camel_case_types
class formScreen extends StatefulWidget {
  const formScreen({super.key});

  @override
  State<formScreen> createState() => _formScreenState();
}

// ignore: camel_case_types
class _formScreenState extends State<formScreen> {
  late String email1, pass1;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),

              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter proper email';
                }
                return null;
              },
            ),

            SizedBox(height: 16.00),

            TextFormField(
              controller: passController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.00),
                ),
              ),

              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter proper email';
                }
                return null;
              },
            ),

            SizedBox(height: 16.00),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                ),
                //! add form validation in at pressed logic
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    email1 = emailController.text.toString();
                    pass1 = passController.text.toString();

                    if (email1 == 'rahul.com' && pass1 == '1234') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Logged in Succesfully")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Credentials")),
                      );
                    }
                  }
                },
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
