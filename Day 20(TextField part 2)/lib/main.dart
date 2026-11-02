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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Text Field")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                // to put a specifi line to write in
                maxLines: 3,
                minLines: 1,
                // to determine the type of the keyboard
                keyboardType: TextInputType.phone,
                // To put strict length for the field
                maxLength: 50,
                enabled: true,
                decoration: InputDecoration(
                  label: Text("User Name"),
                  border: OutlineInputBorder(),
                  // Focus Property
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  // Enable Peoperty
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  // if the border disenable this property will confirm
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
