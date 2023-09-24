import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  CounterScreenState createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen>
{
  int count = 0;
  void incount() {
    setState(() {
      count++;
      if (count == 5)
      {
        Dialogshow();
      }
    });
  }

  void decount() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void Dialogshow() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Button Pressed $count times'),
          actions:
          [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              '$count',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
            ElevatedButton(
            onPressed: incount,
            child: Text('+',style: TextStyle(fontSize: 30),),
            ),
            SizedBox(width: 10),
            ElevatedButton(
            onPressed: decount,
            child: Text('-',style: TextStyle(fontSize: 30),),
            ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}
