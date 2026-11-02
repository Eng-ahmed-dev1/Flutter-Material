import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Expanded",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 43,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Expanded(
                flex: 2, //  define the width of the screen based on other rectangles 
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(
                flex: 3,
                child: Container(color: Colors.green, height: 100),
              ),
              Expanded(child: Container(color: Colors.yellow, height: 100)),
            ],
          ),
        ),
      ),
    );
  }
}
