import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Stack", style: TextStyle(fontSize: 25)),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Container(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(width: 300, height: 300, color: Colors.red),
                Container(width: 200, height: 200, color: Colors.green),
                Positioned(
                  // if we but bottom 0 and top 0 the container will be stretch
                  top: 0,
                  child: Container(width: 100, height: 100, color: Colors.grey),
                ),
                Positioned(child: Text("Ahmed")),
                Positioned(
                  // the value of the direction can be negative
                  right: 0,
                  left: 0,
                  bottom: -30,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
