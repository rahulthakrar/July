import 'package:flutter/material.dart';

class CalculatorEx extends StatefulWidget {
  const CalculatorEx({super.key});

  @override
  State<CalculatorEx> createState() => _CalculatorExState();
}

class _CalculatorExState extends State<CalculatorEx> {
  // Add these variables at the top of your state class
  String calculatedValue = '0';
  String? selectedOperation;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  // Add this function to handle calculations
  void calculate() {
    double value1 = double.tryParse(_controller1.text) ?? 0;
    double value2 = double.tryParse(_controller2.text) ?? 0;
    double result = 0;

    switch (selectedOperation) {
      case '+':
        result = value1 + value2;
        break;
      case '-':
        result = value1 - value2;
        break;
      case '*':
        result = value1 * value2;
        break;
      case '÷':
        result = value2 != 0 ? value1 / value2 : double.infinity;
        break;
      default:
        result = 0;
    }

    setState(() {
      calculatedValue = result.toString();
    });
  }

  // Add this function to handle operation selection
  void selectOperation(String operation) {
    setState(() {
      selectedOperation = operation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Calculator', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Result : $calculatedValue', // Now this will show the actual result
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _controller1, // Add this controller
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'value 1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _controller2, // Add this controller
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'value 2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 20,
                left: 20,
                right: 20,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Update these buttons with onPressed handlers
                    ElevatedButton(
                      onPressed: () => selectOperation('+'),
                      child: Text('+'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => selectOperation('-'),
                      child: Text('-'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => selectOperation('*'),
                      child: Text('*'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => selectOperation('÷'),
                      child: Text('÷'),
                    ),
                  ],
                ),
              ),
            ),
            // Update this button to call the calculate function
            ElevatedButton(onPressed: calculate, child: Text('Calculate')),
          ],
        ),
      ),
    );
  }
}
