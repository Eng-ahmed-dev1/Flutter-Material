import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyStateApp();
}

class _MyStateApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3, child: Scaffold(
        appBar: AppBar(title: Text("Tab Bar "),
        bottom: TabBar(tabs: [
          Tab(child:  Text("PC"),),
          Tab(child:  Text("Computer"),),
          Tab(child:  Text("Mobile"),),
        ]),),
        body: Container(
          child: TabBarView(children: [
            Tab()
          ]),
        ),
      )),
    );
  }
}
