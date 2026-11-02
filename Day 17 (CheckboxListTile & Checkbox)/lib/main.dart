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
  bool? status = true;
  bool? footstatus = true;
  bool? basketstatus = true;
  bool? tennisstatus = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("CheckboxListTile & Checkbox"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Choose Your Favourite Gender",
                style: TextStyle(fontSize: 25),
              ),
              Checkbox(
                value: status,
                onChanged: (val) => {
                  setState(() {
                    status = val;
                  }),
                },
              ),
              Divider(),
              CheckboxListTile(
                checkColor: Colors.yellow,
                activeColor: Colors.orange,
                title: Text("Football"),
                value: footstatus,
                onChanged: (value) => {
                  setState(() {
                    footstatus = value;
                  }),
                },
              ),
              CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Colors.red,
                title: Text("Basketball"),
                value: basketstatus,
                onChanged: (value) => {
                  setState(() {
                    basketstatus = value;
                  }),
                },
              ),
              CheckboxListTile(
                checkColor: Colors.black,
                activeColor: Colors.blue,
                title: Text("Tennis"),
                value: tennisstatus,
                onChanged: (value) => {
                  setState(() {
                    tennisstatus = value;
                  }),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
