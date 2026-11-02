import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController? scrollController;
  @override
  void initState() {
    scrollController = ScrollController();
    scrollController!.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [], title: const Text('Scroll')),
        body: ListView(
          controller: scrollController,
          children: [
            MaterialButton(
              onPressed: () {
                scrollController!.animateTo(
                  9488.0,
                  duration: Duration(seconds: 30),
                  curve: Curves.decelerate,
                );
              },
              child: Text("Jump To End"),
            ),
            ...List.generate(100, (index) {
              return Container(
                color: index.isEven ? Colors.red : Colors.amber,
                alignment: Alignment.center,
                height: 100,
                child: Text("$index", style: TextStyle(fontSize: 25)),
              );
            }),
            MaterialButton(
              onPressed: () {
                scrollController!.jumpTo(0);
              },
              child: Text("Jump To First"),
            ),
          ],
        ),
      ),
    );
  }
}
