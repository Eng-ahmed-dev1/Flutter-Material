import 'package:flutter/material.dart';
import 'package:navigator/HomePage.dart';

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
          Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: MaterialButton(
              textColor: Colors.white,
              onPressed: () {
                // This is remove all the page and but the needed
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Homepage()),
                  (r) => false,
                );
              },
              child: Text("Go To Home "),
            ),
          ),
        ],
      ),
    );
  }
}
