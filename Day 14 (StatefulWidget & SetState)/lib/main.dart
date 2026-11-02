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
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "StatefulWidget & SetState",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    status = true;
                  });
                },
                icon: Icon(Icons.add),
              ),
              status ? Icon(Icons.star) : Icon(Icons.star_border_outlined),
              IconButton(
                onPressed: () {
                  setState(() {
                    status = false;
                  });
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Stateful Widget use when we need interact page
// Stateless Widget use when we need const page
// statelessWidget immutable
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   @override
//   int i = 0;
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             "StatefulWidget & SetState",
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               IconButton(
//                 onPressed: () {
//                   i++;
//                 },
//                 icon: Icon(Icons.add),
//               ),
//               Text("Counter $i"),
//               IconButton(
//                 onPressed: () {
//                   i--;
//                 },
//                 icon: Icon(Icons.remove),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
