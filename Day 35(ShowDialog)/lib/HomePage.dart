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
      appBar: AppBar(title: Text("home page")),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              onPressed: () => {
                showDialog(
                  // when I clikc on the shadow the dialog hide 
                  barrierDismissible: false,

                  context: context,
                  builder: (context) => AlertDialog(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("Ok")),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel"),
                      ),
                    ],
                    content: Text("Are you sure about this choose ..?"),
                    title: Text("Warning"),
                  ),
                ),
              },
              textColor: Colors.white,
              color: Colors.red,
              child: Text("Show Alert"),
            ),
          ),
        ],
      ),
    );
  }
}
