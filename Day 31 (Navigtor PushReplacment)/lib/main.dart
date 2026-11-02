import 'package:flutter/material.dart';
import 'package:navigator/HomePage.dart';

// The first way to navigate it push and pust it mean like you put the widget over widget
// The second way to navigate it push replacment it mean like you replace the widget by widget
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}
