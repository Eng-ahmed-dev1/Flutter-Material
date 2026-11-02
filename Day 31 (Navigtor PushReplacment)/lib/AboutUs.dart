// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navigator/ContactUs.dart';
import 'package:navigator/HomePage.dart';

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
          Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: MaterialButton(
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Text("Go To Home Page "),
            ),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: MaterialButton(
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Contactus()),
                );
              },
              child: Text("Go To Contact Us Page "),
            ),
          ),
        ],
      ),
    );
  }
}
