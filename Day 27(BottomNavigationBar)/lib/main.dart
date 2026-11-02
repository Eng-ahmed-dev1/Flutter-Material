import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

List<Widget> pages = [
  Text("Page 1", style: TextStyle(fontSize: 30)),
  Text("Page 2", style: TextStyle(fontSize: 30)),
  Text("Page 3", style: TextStyle(fontSize: 30)),
];

class _MyAppState extends State<MyApp> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          backgroundColor: Colors.blueGrey,
          selectedFontSize: 16,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.yellow,
          unselectedFontSize: 10,
          onTap: (value) => {
            setState(() {
              selected = value;
            }),
          },
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Contact"),
          ],
        ),
        appBar: AppBar(title: Text("Bottom Navigation Bar")),
        body: Container(child: pages.elementAt(selected)),
      ),
    );
  }
}
