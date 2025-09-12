import 'package:flutter/material.dart';

class Task28 extends StatefulWidget {
  const Task28({super.key});

  @override
  State<Task28> createState() => _Task28State();
}

class _Task28State extends State<Task28> {
  // Product data
  var productNames = [
    'Smart Watch',
    'Wireless Earbuds',
    'Smartphone',
    'Laptop',
    'Tablet',
  ];
  var productPrices = [
    '\$199.99',
    '\$129.99',
    '\$899.99',
    '\$1299.99',
    '\$499.99',
  ];
  var productImages = [
    'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=300',
    'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=300',
    'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=300',
    'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=300',
    'https://images.unsplash.com/photo-1561154464-82e9adf32764?w=300',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Product Listing',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        height: 250, // Fixed height for horizontal list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productNames.length,
          itemBuilder: (context, index) {
            return Container(
              width: 180, // Fixed width for each product card
              margin: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      productImages[index],
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 140,
                          color: Colors.grey[300],
                          child: const Icon(Icons.error),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productNames[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            productPrices[index],
                            style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
