import 'package:flutter/material.dart';
import 'package:initstateanddispose/home-page.dart';
import 'package:initstateanddispose/page-one.dart';
import 'package:initstateanddispose/page-two.dart';

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
      routes: {
        "pageone": (context) => Pageone(),
        "pagetwo": (context) => Pagetwo(),
        "Home": (context) => Homepage(),
      },
      home: Homepage(),
    );
  }
}
