import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Example1")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffe6f0fa),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                width: 500,
                child: Text(
                  "strawberry pavlova",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: const Color(0xffe6f0fa),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "over 2000 years old. Richard , a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through classical literature, discovered the undoubtable source. ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 5,
                ),
                width: 600,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: const Color(0xffe6f0fa),
                ),
                child: Row(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, size: 20),
                        Icon(Icons.star, size: 20),
                        Icon(Icons.star, size: 20),
                        Icon(Icons.star, size: 20),
                        Icon(Icons.star, size: 20),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "170 Reviews",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 600,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffe6f0fa),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.calculate,
                          size: 30,
                          color: Colors.lightGreen,
                        ),
                        Text(
                          "Prep : ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(height: 10),
                        Text("25 min"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.calculate,
                          size: 30,
                          color: Colors.lightGreen,
                        ),
                        Text(
                          "Prep : ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(height: 10),
                        Text("25 min"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.calculate,
                          size: 30,
                          color: Colors.lightGreen,
                        ),
                        Text(
                          "Prep : ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(height: 10),
                        Text("25 min"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
