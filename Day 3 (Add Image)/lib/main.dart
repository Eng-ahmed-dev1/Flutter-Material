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
        body: Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "Images/photo.jpg",
            width: 400,
            height: 500,
            fit: BoxFit.contain,
          ),
          //child: Image.network("link")
        ),
      ),
    );
  }
}
