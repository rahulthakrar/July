import 'package:flutter/material.dart';

class ProfileCardInfo extends StatefulWidget {
  const ProfileCardInfo({super.key});

  @override
  State<ProfileCardInfo> createState() => _ProfileCardInfoState();
}

class _ProfileCardInfoState extends State<ProfileCardInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Profile Card'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // ignore: avoid_unnecessary_containers
        child: Container(
          height: 95,
          color: Colors.white70,

          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80',
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Rahul Thakrar',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(children: [Text('Flutter Intern')]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
