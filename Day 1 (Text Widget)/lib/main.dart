import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//  in this lesson we know a littel of the properties of Text Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text(
          "Ahmed Alaa",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.2,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black,
          ),
        ),
        appBar: AppBar(title: Text("Ahmed")),
      ),
    );
  }
}
