import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
        centerTitle: true,
        title: Text("Search Delegate"),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List username = [
    "ahmed",
    "alaa",
    "shayd",
    "mohand",
    "mabdelsadek",
    "yasser",
    "yousef",
  ];
  List? filter;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(query, style: TextStyle(fontSize: 16)),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: username.length,
        itemBuilder: (context, i) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  query = filter![i];
                  showResults(context);
                },
                child: Text("${username[i]}", style: TextStyle(fontSize: 16)),
              ),
            ),
          );
        },
      );
    } else {
      filter = username.where((ele) => ele.contains(query)).toList();
      return ListView.builder(
        itemCount: filter!.length,
        itemBuilder: (context, i) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  query = filter![i];
                  showResults(context);
                },
                child: Text("${filter![i]}", style: TextStyle(fontSize: 16)),
              ),
            ),
          );
        },
      );
    }
  }
}
