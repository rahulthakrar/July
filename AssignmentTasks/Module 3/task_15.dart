import 'package:flutter/material.dart';

class ImageAssetExperimental extends StatefulWidget {
  const ImageAssetExperimental({super.key});

  @override
  State<ImageAssetExperimental> createState() => _ImageAssetExperimentalState();
}

class _ImageAssetExperimentalState extends State<ImageAssetExperimental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Asset Experimental'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('asset/Images/gow.webp', fit: BoxFit.fill),
                SizedBox(height: 10),
                Image.asset('asset/Images/gow.webp', fit: BoxFit.contain),
                SizedBox(height: 10),
                Image.asset('asset/Images/gow.webp', fit: BoxFit.cover),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
