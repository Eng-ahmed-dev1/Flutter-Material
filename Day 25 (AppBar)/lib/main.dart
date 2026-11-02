import 'package:flutter/material.dart';

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
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.percent)),
            IconButton(onPressed: () {}, icon: Icon(Icons.list)),
          ],
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          elevation: 30.0,
          shadowColor: Colors.black,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Appbar"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
