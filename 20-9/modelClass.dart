import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Modelclass extends StatelessWidget {
  List modelList;
  Modelclass({super.key, required this.modelList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: GridView.builder(
        itemCount: modelList.length,
        itemBuilder: (context, index) {
          var itemList = modelList[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5, // shadow of card
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Image.network(
                      itemList['imageurl'],
                      height: 130,
                      width: double.infinity,
                      fit: BoxFit.fitHeight, // tried cover and fitheight
                    ),
                  ), //It’s a widget that clips (cuts) its child into a rounded rectangle shape.
                  // Name
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      itemList['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  //realname
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text("Real Name: ${itemList['realname']}"),
                  ),
                  //team
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text("Team: ${itemList['team']}"),
                  ),

                  //firstappearance
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text(
                      "First Appearance: ${itemList['firstappearance']}",
                    ),
                  ),

                  //createdby
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text("Created By: ${itemList['createdby']}"),
                  ),

                  //publisher
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text("Publisher: ${itemList['publisher']}"),
                  ),

                  //bio
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text("Bio: ${itemList['bio']}"),
                  ),
                ],
              ),
            ),
          );
        },

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 3 items per row
          crossAxisSpacing: 8.0, // Spacing between items horizontally
          mainAxisSpacing: 8.0, // Spacing between items vertically
        ),
      ),
    );
  }
}

/*

name 
realname
team
firstappearance
createdby
publisher
imageurl
bio

*/
