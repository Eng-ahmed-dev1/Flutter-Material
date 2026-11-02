import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Title")),
        body: Container(
          color: Colors.blueGrey,
          width: 500,
          height: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(color: Colors.yellow, width: 100, height: 100),
            ],
          ),
          /*Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment
                .center, // there are more than feature like top,  down  and cetner
            children: [
              Text("Ahmed"),
              Container(height: 100, width: 100, color: Colors.amber),
              Container(height: 100, width: 100, color: Colors.red),
            ],
          ),*/
        ),
      ),
    );
  }
}
