import 'package:flutter/material.dart';
void main ()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
      debugShowCheckedModeBanner:true,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title:  Text("Profile",style: TextStyle(
          ),),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // edit with main axis
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 50,
                  color: Colors.green,
                ),
                Text("Jhon Doe",style: TextStyle(
                    color: Colors.green,
                  fontWeight: FontWeight.normal,
                  fontSize: 20
                ),),
                Text("Flutter Batch 4",style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 15,
                  fontWeight: FontWeight.normal
                ),),
              ],
            )),
      ),
      // title: "Valley",
    );
  }
}
