import 'package:flutter/material.dart';
import 'package:navigator/AboutUs.dart';
import 'package:navigator/Contactus.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Home Page "),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Home page ",
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
                // this get from routes form the main widget
                Navigator.of(context).pushNamed("Home");
              },
              child: Text("Go To About  US"),
            ),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: MaterialButton(
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Contactus()),
                  (r) => false,
                );
              },
              child: Text("Go To Contact US"),
            ),
          ),
        ],
      ),
    );
  }
}
