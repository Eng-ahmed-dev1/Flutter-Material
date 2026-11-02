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

class _MyAppState extends State<StatefulWidget> {
  List<String> Images = [
    "images/Nature.jpg",
    "images/Green.avif",
    "images/Butter.avif",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PageView & PageViewBuilder"),
        ),
        // perfer page view to be in specific heigth because don't take a infintie height
        body: Container(
          height: 300,
          child: PageView.builder(
            itemCount: Images.length,
            itemBuilder: (context, index) {
              return Image.asset(Images[index], fit: BoxFit.cover);
            },
          ),
        ),
      ),
    );
  }
}
/**
 * Container(
          height: 300,
          child: PageView(
            // return index of the current page
            reverse: true, // revers scroll direction
            // physics: NeverScrollableScrollPhysics(), // to stop scroll
            onPageChanged: (value) => {},
            children: [
              Image.asset('images/Nature.jpg', fit: BoxFit.cover),
              Image.asset('images/Green.avif', fit: BoxFit.cover),
            ],
          ),
 */