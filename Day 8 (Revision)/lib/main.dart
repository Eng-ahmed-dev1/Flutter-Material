import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List emps = [
    {"name": "Ahmed"},
    {"name": "Mido"},
    {"name": "Ibrahim"},
    {"name": "Yasser"},
    {"name": "Yousef"},
    {"name": "Mohamed"},
    {"name": "Belal"},
    {"name": "Shino"},
    {"name": "Zyad"},
    {"name": "Ahmed"},
    {"name": "Mido"},
    {"name": "Ibrahim"},
    {"name": "Yasser"},
    {"name": "Yousef"},
    {"name": "Mohamed"},
    {"name": "Belal"},
    {"name": "Shino"},
    {"name": "Zyad"},
    {"name": "Ahmed"},
    {"name": "Mido"},
    {"name": "Ibrahim"},
    {"name": "Yasser"},
    {"name": "Yousef"},
    {"name": "Mohamed"},
    {"name": "Belal"},
    {"name": "Shino"},
    {"name": "Zyad"},
    {"name": "Ahmed"},
    {"name": "Mido"},
    {"name": "Ibrahim"},
    {"name": "Yasser"},
    {"name": "Yousef"},
    {"name": "Mohamed"},
    {"name": "Belal"},
    {"name": "Shino"},
    {"name": "Zyad"},
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // prevent the stretch by the mouse wheel
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.pink),
            ],
          ),
        ),

        appBar: AppBar(
          centerTitle: true, // to get the title in the center
          title: Text(
            "Day 7 (Revision)",
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.black,
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}



// revision on the Listviewbuilder 
/*
 body: Container(
          height: 400,
          margin: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, i) {
              return Container(
                child: Text("${emps[i]['name']}", textAlign: TextAlign.center),
              );
            },
            itemCount: emps.length,
          ),
        ),
 */

// revision on listview.builder
/* 
 body: Container(
          height: 400,
          margin: EdgeInsets.all(10),
          child: ListView.separated(
            itemBuilder: (context, i) {
              return Container(
                child: Text("${emps[i]['name']}", textAlign: TextAlign.center),
              );
            },
            itemCount: emps.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
*/
// Revision on the Wrap
/*Container(

          height: 500,
          color: Colors.blueAccent,

          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.black),
            ],
          ),
*/
// revision on the singlchildscrollview
/*
 body: SingleChildScrollView(
          child: Column(
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.pink),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.black),
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 100, height: 100, color: Colors.pink),
            ],
          ),
        ),
 */