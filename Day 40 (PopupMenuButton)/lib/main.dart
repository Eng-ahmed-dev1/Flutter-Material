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
      home: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              // we can change the icon and the size
              // get the value which selected by the user
              onSelected: (val) {
                print(val);
              },
              onOpened: () {
                print("open");
              },
              onCanceled: () {
                print("Cancelled");
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: Text("Valone"),
                  child: Text("one"),
                  onTap: () {
                    print("one");
                  },
                ),
                PopupMenuItem(
                  value: Text("Valtwo"),
                  child: Text("two"),
                  onTap: () {
                    print("two");
                  },
                ),
              ],
            ),
          ],
          centerTitle: true,
          title: const Text("PopupMenuButton"),
        ),
        body: ListView(children: []),
      ),
    );
  }
}
