import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController username = TextEditingController();
  String? username1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Text filed 3")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // get data
              TextField(
                onChanged: (value) => {
                  setState(() {
                    username1 = value;
                  }),
                },
              ),
              MaterialButton(
                onPressed: () => {print(username1)},
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Print"),
              ),
              Text("$username1"),
            ],
          ),
        ),
      ),
    );
  }
}
