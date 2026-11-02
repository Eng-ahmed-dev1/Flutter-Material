// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
  const Contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Contact Us"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
