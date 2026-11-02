// If I need a button to get the data
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var map = {};
//   bool loading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, title: Text("Http API Part 1 & 2 ")),
//       body: ListView(
//         children: [
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 30),
//             child: MaterialButton(
//               color: Colors.red,
//               textColor: Colors.white,
//               onPressed: () async {
//                 loading = true;
//                 setState(() {});
//                 var response = await get(
//                   Uri.parse("https://dummyjson.com/users"),
//                 );
//                 var filterresponse = jsonDecode(response.body);
//                 map.addAll(filterresponse);
//                 loading = false;
//                 setState(() {});
//               },
//               child: Text("Http request"),
//             ),
//           ),
//           if (loading)
//             Container(child: CircularProgressIndicator(color: Colors.green)),
//           ...List.generate(
//             map.length,
//             (i) => Card(
//               child: ListTile(
//                 title: Text("${map['users'][i]['firstName']}"),
//                 subtitle: Text("${map['users'][i]['ip']}"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// ===========================================================================================================

// Without need button like u wannat get the all users applications when the app started
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var map = {};
//   bool loading = false;

//   getData() async {
//     loading = true;
//     setState(() {});
//     var response = await get(Uri.parse("https://dummyjson.com/users"));
//     var filterresponse = jsonDecode(response.body);
//     map.addAll(filterresponse);
//     loading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, title: Text("Http API Part 1 & 2 ")),
//       body: ListView(
//         children: [
//           if (loading)
//             Container(child: CircularProgressIndicator(color: Colors.green)),
//           ...List.generate(
//             map.length,
//             (i) => Card(
//               child: ListTile(
//                 title: Text("${map['users'][i]['firstName']}"),
//                 subtitle: Text("${map['users'][i]['ip']}"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
