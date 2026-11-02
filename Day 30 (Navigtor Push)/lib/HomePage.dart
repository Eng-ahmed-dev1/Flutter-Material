import 'package:flutter/material.dart';
import 'package:navigator/AboutUs.dart';

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
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Aboutus()));
              },
              child: Text("Go To About US"),
            ),
          ),
        ],
      ),
    );
  }
}
