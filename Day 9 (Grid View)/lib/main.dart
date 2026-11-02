import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List emps = [
    {"name": "Ahmed", "age": 16},
    {"name": "Mido", "age": 16},
    {"name": "Body", "age": 16},
    {"name": "Omar", "age": 16},
    {"name": "Yasser", "age": 16},
    {"name": "Rahim", "age": 16},
    {"name": "Sayed", "age": 16},
    {"name": "Yousef", "age": 16},
    {"name": "Osman", "age": 16},
    {"name": "Noor", "age": 16},
    {"name": "Nada", "age": 16},
    {"name": "Nermeen", "age": 16},
    {"name": "Yassien", "age": 16},
    {"name": "Ahmed", "age": 16},
    {"name": "Mido", "age": 16},
    {"name": "Body", "age": 16},
    {"name": "Omar", "age": 16},
    {"name": "Yasser", "age": 16},
    {"name": "Rahim", "age": 16},
    {"name": "Sayed", "age": 16},
    {"name": "Yousef", "age": 16},
    {"name": "Osman", "age": 16},
    {"name": "Noor", "age": 16},
    {"name": "Nada", "age": 16},
    {"name": "Nermeen", "age": 16},
    {"name": "Yassien", "age": 16},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Grid View",
            style: TextStyle(
              backgroundColor: Colors.black,
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          child: GridView.builder(
            // scrollDirection: Axis.horizontal, -> to define the scroll diraction
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // the number of row to sperate
              childAspectRatio: 0.5, // width over height
              crossAxisSpacing: 3, //sperator the height
              mainAxisSpacing: 2, // sperator the width
              mainAxisExtent: 90, // fixed size for the element
            ),
            itemBuilder: (context, i) {
              return Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                color: Colors.blue,
                child: Text("${emps[i]['name']} - ${emps[i]['age']}"),
              );
            },
            itemCount: emps.length,
          ),
        ),
      ),
    );
  }
}
