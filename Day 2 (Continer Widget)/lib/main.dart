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
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pink, width: 3),
            boxShadow: [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(10, 10),
                blurRadius: 10,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.green,
                offset: Offset(-10, -10),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(4000)),
          ),
          height: 400,
          width: 500,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "Alaa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Title",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              backgroundColor: Colors.blue,
              fontSize: 30.2,
            ),
          ),
        ),
      ),
    );
  }
}
