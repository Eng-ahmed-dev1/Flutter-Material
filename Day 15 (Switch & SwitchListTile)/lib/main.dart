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
  bool status = true;
  bool status1 = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "SwitchListTile & switch",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: 500,
          child: Column(
            children: [
              // Take all the width
              SwitchListTile(
                title: Text("On / Off"),
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey[700],
                value: status,
                onChanged: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              Divider(height: 50),
              Container(
                // This like button
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.topRight,
                child: Switch(
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.grey[700],
                  value: status1,
                  onChanged: (val) {
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
