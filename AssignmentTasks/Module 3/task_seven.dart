import 'package:flutter/material.dart';

class GridViewBuilderEx extends StatefulWidget {
  const GridViewBuilderEx({super.key});

  @override
  State<GridViewBuilderEx> createState() => _GridViewBuilderExState();
}

class _GridViewBuilderExState extends State<GridViewBuilderEx> {
  @override
  Widget build(BuildContext context) {
    final List<Model> items = [
      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),

      Model(
        imageUrl:
            'https://www.financialexpress.com/wp-content/uploads/2025/06/Untitled-design-2025-06-26T093537.498.jpg',
        title: 'Iphone 17',
        subtitle: 'Price : 100000',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("GridView Example")),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(items[index].imageUrl),
            title: Text(
              items[index].title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[index].subtitle),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

// ---------------------------Model Class-----------------------

class Model {
  var imageUrl;
  var title;
  var subtitle;

  Model({this.imageUrl, this.title, this.subtitle});
}
