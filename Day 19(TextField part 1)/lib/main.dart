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
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Text Field Part 1 ")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                // hint property
                decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // it combination between the labeltext and labelstyle
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Gmail",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // LabelText Proberty
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Prefix and Suffix prob
              TextField(
                decoration: InputDecoration(
                  prefix: Icon(Icons.person),
                  suffix: Icon(Icons.close),
                ),
              ),
              // or using the standerd text field for icons
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.red,
                ),
              ),
              // also if we want to put a staic words in the first of the text field we will make prefixtext property
              // and also suffixText exsit
              TextField(
                decoration: InputDecoration(
                  prefixText: "User Name",
                  prefixStyle: TextStyle(color: Colors.red),
                ),
              ),
              // fill color to the text field
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
              // to show the icon before the text filed we use icon and icon color if we need change color
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
