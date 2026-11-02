import 'package:flutter/material.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  // this is funcation called when the stateful of that widget called
  @override
  void initState() {
    super.initState();
  }

  // this is function called when the statful widget removed
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Page one")),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil("Home", (routes) => false);
            },
            child: Text("Go To Home"),
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
