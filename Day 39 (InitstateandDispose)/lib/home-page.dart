import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("IntialState And Dispose")),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed("pageone");
            },
            child: Text("Go To Page one"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed("pagetwo");
            },
            child: Text("Go To Page Two"),
          ),
        ],
      ),
    );
  }
}
