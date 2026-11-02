import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyStateApp();
}

class _MyStateApp extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tab;
  @override
  void initState() {
    tab = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tab Bar 1"),
          bottom: TabBar(
            controller: tab,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            labelColor: Colors.blueGrey,
            unselectedLabelColor: Colors.green,
            unselectedLabelStyle: TextStyle(fontSize: 10),
            labelStyle: TextStyle(fontSize: 16),
            tabs: [
              Tab(
                iconMargin: EdgeInsets.all(10),
                text: "Labtop",
                icon: Icon(Icons.laptop),
              ),
              Tab(
                text: "PC",
                icon: Icon(Icons.computer_sharp),
                iconMargin: EdgeInsets.all(10),
              ),
              Tab(
                text: "Mobile",
                icon: Icon(Icons.mobile_friendly),
                iconMargin: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: TabBarView(
            controller: tab,
            children: [
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      tab!.animateTo(1);
                    },
                    child: Text("Go to PC"),
                  ),
                ],
              ),
              Text("PC Laptop"),
              Text("Mobile Page"),
            ],
          ),
        ),
      ),
    );
  }
}
