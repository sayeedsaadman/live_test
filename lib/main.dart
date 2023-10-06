import 'package:flutter/material.dart';
//not completed
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  Color _selectedColor = Colors.blue;
  String _selectedSize = 'Small';

  void _changeColorAndShowSnackbar(Color newColor, String newSize) {
    setState(() {
      _selectedColor = newColor;
      _selectedSize = newSize;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $_selectedSize'),
      ),
    );
  }

  Widget _buildColorButton(Color color, String size) {
    return ElevatedButton(
      onPressed: () {
        _changeColorAndShowSnackbar(color, size);
      },
      style: ElevatedButton.styleFrom(primary: color),
      child: Text(size),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(

          runSpacing: 8,
          spacing: 8,

          children: [
            Container(
              width: 100,
              height: 40,
              child: _buildColorButton(Colors.orange, 'S'),
            ),

            Container(
              height: 40,
              width: 100,
              child: _buildColorButton(Colors.grey, 'M'),
            ),

            Container(
              height: 40,
              width: 100,
              child: _buildColorButton(Colors.grey, 'L'),
            ),

            Container(
              height: 40,
              width: 100,
              child: _buildColorButton(Colors.grey, 'XL'),
            ),

            Container(
              height: 40,
              width: 100,
              child: _buildColorButton(Colors.grey, 'XXL'),
            ),

            Container(
              height: 40,
              width: 100,
              child: _buildColorButton(Colors.grey, 'XXXL'),
            ),
          ],
        ),
      ),
    );
  }
}