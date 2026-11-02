import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: true),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Card And ListTile",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5, // shadow
              child: ListTile(
                hoverColor: Colors.grey,
                enabled: true, // On of Off button
                leading: Text("leading"),
                title: Text("title"),
                subtitle: Text("subtitle"),
                trailing: Text("trailing"),
                onTap: () => {print("Mido")},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
