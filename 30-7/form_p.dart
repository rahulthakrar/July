import 'package:flutter/material.dart';

class FormP extends StatefulWidget {
  const FormP({super.key});

  @override
  State<FormP> createState() => _FormPState();
}

class _FormPState extends State<FormP> {
  //1. key mention
  final _formkey = GlobalKey<FormState>();
  late String email1, password1;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        //   key: 2. key call,
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter proper email';
                }
                return null;
              },
            ),
            SizedBox(height: 18),
            TextFormField(
              controller: password,
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Proper Password';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            SizedBox(height: 18),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            SizedBox(height: 18),
            // ignore: sized_box_for_whitespace
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //3. validation
                  // if()
                  // {

                  // }

                  if (_formkey.currentState!.validate()) {
                    email1 = email.text.toString();
                    password1 = password.text.toString();

                    if (email1 == "admin@gmail.com" && password1 == "1234") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Logged in Succesfully")),
                      );
                      // Navigator.push(context,MaterialPageRoute(builder: (context) => FormState()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Credentials")),
                      );
                    }
                  }

                  // Your submit logic here
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // Adjust the radius as needed
                  ),
                ),
                child: const Text('SUBMIT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
