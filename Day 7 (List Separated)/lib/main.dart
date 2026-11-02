import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List employes = [
    {"name": "Ahmed"},
    {"name": "Alaa"},
    {"name": "Yousef"},
    {"name": "Mohamed"},
    {"name": "Yasser"},
    {"name": "Body"},
    {"name": "Ibrahim"},
    {"name": "Hakim"},
    {"name": "Malike"},
    {"name": "Radwan"},
    {"name": "Ayman"},
    {"name": "Abas"},
    {"name": "Neveen"},
    {"name": "Yousra"},
    {"name": "Salama"},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // give me a featuer to sparat between layers or the rows (ListViewBuilder)
          // in the end the ListView.sparated it sparated the elements of ListViewBuilder
          // diff between the listView and listViewBuilder the list view carry more than childer and the listviewbuilder can display from DB and carry more than child also 
          child: ListView.separated(
            shrinkWrap:
                true, // make the list view take the suitable space for it
            //  physics: NeverScrollableScrollPhysics(), // make the app don't scroll and is benefit when we have nasted list view
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black,
                thickness: 2.0,
              ); // just line sparate between the rows of listview
            },
            itemCount: employes.length,
            itemBuilder: (context, i) {
              return Container(
                height: 100,
                color: i.isEven ? Colors.blue : Colors.red,
                child: Text(
                  textAlign: TextAlign.center,
                  "${employes[i]['name']}",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
