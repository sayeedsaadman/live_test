import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingList());
}

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My Shopping List.")),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add your cart action here
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.apple),
              title: Text("Apple"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Banana"),
            ),
            ListTile(
              leading: Icon(Icons.local_grocery_store),
              title: Text("Bread"),
            ),
            ListTile(
              leading: Icon(Icons.local_drink_outlined),
              title: Text("milk"),
            ),
            ListTile(
              leading: Icon(Icons.egg),
              title: Text("Egg"),
            ),
          ],
        ),
      ),
    );
  }
}
