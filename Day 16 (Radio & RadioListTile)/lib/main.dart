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
  String? country;
  int? ageYear;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(" RadioListTile & Radio"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Choose Country",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RadioGroup<String>(
                groupValue: country,
                onChanged: (val) => {
                  setState(() {
                    country = val;
                  }),
                },
                child: Column(
                  children: [
                    RadioListTile<String>(value: "Egypt", title: Text("Egypt")),
                    RadioListTile<String>(
                      value: "Jordan",
                      title: Text("Jordan"),
                    ),
                    RadioListTile<String>(value: "Syria", title: Text("Syria")),
                  ],
                ),
              ),
              Divider(color: Colors.red, thickness: 2),

              RadioGroup<int>(
                groupValue: ageYear,
                onChanged: (value) => {
                  setState(() {
                    ageYear = value;
                  }),
                },
                child: Column(
                  children: [
                    RadioListTile<int>(
                      activeColor: Colors.red,
                      tileColor: Colors.green,
                      value: 2008,
                      title: Text("2008"),
                    ),
                    RadioListTile<int>(value: 2009, title: Text("2009")),
                    RadioListTile<int>(value: 2010, title: Text("2010")),
                    Text(
                      textAlign: TextAlign.center,
                      "Yout country is $country , your yearAge is $ageYear",
                      style: TextStyle(color: Colors.brown, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
