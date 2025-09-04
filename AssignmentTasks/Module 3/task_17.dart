import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationFormEx extends StatefulWidget {
  const RegistrationFormEx({super.key});

  @override
  State<RegistrationFormEx> createState() => _RegistrationFormExState();
}

class _RegistrationFormExState extends State<RegistrationFormEx> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? validateName(String? value) // will return string
  {
    if (value!.isEmpty) {
      return 'Please Enter Your Name';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    if (!value.contains('@gmail.com')) {
      return 'Email must be a @gmail.com address';
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }

    // Check if the input is NOT entirely numeric
    if (int.tryParse(value) == null) {
      return 'Password must contain only numeric values';
    }

    return null;
  }

  String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your phone number';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Phone number can only contain digits';
    }
    return null;
  }

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with submission
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: validateName,
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: validateEmail,
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: validatePassword,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter
                        .digitsOnly, // Prevents non-numeric input
                  ],
                  controller: _passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: validatePhone,
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'PH No.',
                  ),
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(onPressed: submitForm, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
