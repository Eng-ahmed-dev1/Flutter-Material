import 'package:flutter/material.dart';
import 'package:showdialog/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}
