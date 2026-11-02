import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? state;
  bool? check;
  String? selectedValue; // ← المتغير اللي بيحفظ الاختيار
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text("Home Page")),
      body: Column(
        children: [
          SwitchListTile(
            title: Text("On / Off"),
            value: state!,
            subtitle: Text("Clikc to on"),
            secondary: Icon(Icons.wifi),
            onChanged: (value) {
              setState(() {
                state = value;
              });
            },
          ),
          Divider(),
          CheckboxListTile(
            title: Text("On / Off"),
            subtitle: Text("Clikc to on"),
            secondary: Icon(Icons.wifi),
            value: check,
            onChanged: (value) {
              setState(() {
                check = value;
              });
            },  
          ),
          Divider(),
          RadioGroup<String>(
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            child: Column(
              children: [
                RadioListTile<String>(
                  title: Text("Option 1"),
                  value: "option1",
                ),
                RadioListTile<String>(
                  title: Text("Option 2"),
                  value: "option2",
                ),
                RadioListTile<String>(
                  title: Text("Option 3"),
                  value: "option3",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
