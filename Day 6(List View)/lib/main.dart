import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// list view is like SingleChildScrollView but more flexible bcz it carry more than one children  but the SingleChildScrollView carry one chile
class MyApp extends StatelessWidget {
  List employees = [
    {"name": "Ahmed", "lastName": "Alaa", "price": 5000},
    {"name": "Mido", "lastName": "Mohamed", "price": 6000},
    {"name": "Abdelrahman", "lastName": "Alaa", "price": 7000},
    {"name": "Ahmed", "lastName": "Alaa", "price": 5000},
    {"name": "Mido", "lastName": "Mohamed", "price": 6000},
    {"name": "Yousef", "lastName": "Alaa", "price": 7000},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, i) {
            return Container(
              height: 100,
              color: Colors.blueAccent,
              child: Text(
                "${employees[i]['name']}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}



 /*Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ahmed")),
        body: Container(
          height: 400,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 63, 85, 64),
              ),
              Container(width: 100, height: 100, color: Colors.black),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 226, 216, 126),
              ),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 63, 85, 64),
              ),
              Container(width: 100, height: 100, color: Colors.black),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 226, 216, 126),
              ),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 63, 85, 64),
              ),
              Container(width: 100, height: 100, color: Colors.black),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 226, 216, 126),
              ),
            ],
          ),
        ),
      ),
    );
  }
  */