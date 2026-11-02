import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.facebook, color: Colors.blue),
              IconButton(
                iconSize: 50,
                onPressed: () => {print("Mido")},
                icon: Icon(Icons.facebook, color: Colors.red),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Icon and Button Icon",
            style: TextStyle(
              fontSize: 40,
              backgroundColor: Colors.black,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
