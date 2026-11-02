import 'package:flutter/material.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  // this is funcation called when the statefule of that widget called
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
      appBar: AppBar(centerTitle: true, title: Text("Page two")),
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
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil("Home", (routes) => false);
            },
            child: Text("Go To Home"),
          ),
        ],
      ),
    );
  }
}
