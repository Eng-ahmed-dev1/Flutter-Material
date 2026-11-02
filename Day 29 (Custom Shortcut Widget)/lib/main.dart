import 'package:flutter/material.dart';
import 'CustomWidget.dart';

void main() {
  runApp(MyApp());
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Custom Shortcut Wiget")),
        body: Container(
          child: Column(
            children: [
              CustomListTile(
                name: "Ahmed",
                email: "ahmed@gmail.com",
                date: "30-11-2008",
                ImageName: "images/Butter.avif",
              ),
              CustomListTile(
                name: "Mohhamed",
                email: "mohamed@gmail.com",
                date: "30-11-2008",
                ImageName: "images/Nature.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
