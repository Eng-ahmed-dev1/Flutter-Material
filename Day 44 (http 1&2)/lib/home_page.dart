import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Map> getData() async {
    setState(() {});
    var response = await get(Uri.parse("https://dummyjson.com/users"));
    Map filterresponse = jsonDecode(response.body);
    return filterresponse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Http API Part 1 & 2 ")),
      body: FutureBuilder<Map>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Erorr");
            }
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!['users'].length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Text("${snapshot.data!['users'][i]['firstName']}"),
                      subtitle: Text("${snapshot.data!['users'][i]['ip']}"),
                    ),
                  );
                },
              );
            }
          }

          return Text("Erro Fetching data");
        },
      ),
    );
  }
}
