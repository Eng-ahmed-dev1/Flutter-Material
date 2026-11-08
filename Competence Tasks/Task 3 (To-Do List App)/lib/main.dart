/*
 Expanded 
 ClipReact
 Image.Asset 
 AssetImage
 SingelScrollView Widget
 customized widgets 

 */
import 'package:flutter/material.dart';
import 'package:to_do_list/Screens/to_do_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ToDoList());
  }
}
