import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Title")),
        // we use wrap when we have elements more than the size of the screen in (Raw state)
        // we use SingleChildScrollView when we have elements more than the size of the screen in (Col state)
        body: SingleChildScrollView(
          // singlechildscrollview also work with the row not the col only
          // to define the scroll diraction
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.white),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.white),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.white),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
