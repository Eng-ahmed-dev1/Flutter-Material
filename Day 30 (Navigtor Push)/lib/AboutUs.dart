import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("About Us"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "About Us",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
