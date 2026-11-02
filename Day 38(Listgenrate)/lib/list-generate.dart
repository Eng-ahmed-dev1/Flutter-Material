import 'package:flutter/material.dart';

class Listgenerate extends StatefulWidget {
  const Listgenerate({super.key});

  @override
  State<Listgenerate> createState() => _ListgenerateState();
}

class _ListgenerateState extends State<Listgenerate> {
  List usernames = [
    {"name": "Ahmed", "age": 19},
    {"name": "Mido", "age": 20},
    {"name": "Mohamed", "age": 22},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("List generate")),
      body: ListView(
        children: [
          // we added three dots bcz we put a nested list
          ...List.generate(usernames.length, (index) {
            return Card(child: ListTile(title: Text(usernames[index]["name"])));
          }),
        ],
      ),
    );
  }
}
