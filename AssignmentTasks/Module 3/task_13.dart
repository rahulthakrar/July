import 'package:flutter/material.dart';

class ImageSwitchButton extends StatefulWidget {
  const ImageSwitchButton({super.key});

  @override
  State<ImageSwitchButton> createState() => _ImageSwitchButtonState();
}

class _ImageSwitchButtonState extends State<ImageSwitchButton> {
  // List of image URLs
  final List<String> images = [
    'https://i.pinimg.com/1200x/06/a9/72/06a97213cd8c9d6a19a3fcd57661fe27.jpg',
    'https://i.pinimg.com/736x/c3/b4/2d/c3b42d7e863f305206ca878b449ffc51.jpg',
    'https://i.pinimg.com/originals/30/33/67/303367e7b7241c9ac412d41f8ea95d81.png',
    'https://i.pinimg.com/736x/c3/b4/2d/c3b42d7e863f305206ca878b449ffc51.jpg',
    'https://i.pinimg.com/736x/95/c1/bc/95c1bc31b1a4ceb58fa4537197a8adf4.jpg',
  ];

  int currentIndex = 0; // first image index no is zero

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Image Changer')),
      body: Column(
        children: [
          // Display image
          Image.network(images[currentIndex], fit: BoxFit.cover, height: 300),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                currentIndex++;

                // If reached end , the first image will repeat
                if (currentIndex >= images.length) {
                  currentIndex = 0;
                }
              });
            },
            child: const Text('Next Image'),
          ),
        ],
      ),
    );
  }
}
