import 'package:flutter/material.dart';

class ToggleSwitchEx extends StatefulWidget {
  const ToggleSwitchEx({super.key});

  @override
  State<ToggleSwitchEx> createState() => _ToggleSwitchExState();
}

class _ToggleSwitchExState extends State<ToggleSwitchEx> {
  // switch position
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Change background color based on switch state
      backgroundColor: _isSwitchOn ? Colors.black : Colors.white,

      appBar: AppBar(title: Text('Toggle Switch Example')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text that changes on switch
            Text(
              _isSwitchOn ? 'Switch is ON' : 'Switch is OFF',
              style: TextStyle(
                fontSize: 24,
                color: _isSwitchOn ? Colors.white : Colors.black,
              ),
            ),

            SizedBox(height: 30),

            Switch(
              // value of the switch
              value: _isSwitchOn,

              // This function runs when user toggles the switch
              onChanged: (bool newValue) {
                setState(() {
                  _isSwitchOn = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
