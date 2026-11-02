import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List posts = [];
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Http Request")),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,

              onPressed: () async {
                loading = true;
                setState(() {});
                final response = await http.get(
                  Uri.parse("https://dummyjson.com/posts"),
                );
                var responsebody = jsonDecode(response.body);
                posts = responsebody["posts"];
                loading = false;
                setState(() {});
              },
              child: Text("Http Request"),
            ),
          ),
          if (loading) Center(child: CircularProgressIndicator()),
          ...List.generate(
            posts.length,
            (index) => Card(
              child: ListTile(
                title: Text(posts[index]["title"]),
                subtitle: Text(posts[index]["body"]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
