import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehavior().copyWith(scrollbars: true),
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // third type of buttons
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          onPressed: () => {print("Ahmed")},
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Buttons",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              // first type of button
              MaterialButton(
                color: Colors.red,
                minWidth: 200,
                textColor: Colors.white,
                height: 25,
                padding: EdgeInsets.all(10),
                onLongPress: () => print("Mido"),
                onPressed: () {
                  print("Ahmed");
                },
                child: Text("Material Button"),
              ),

              SizedBox(height: 10),

              // second type is Icon Button
              IconButton(
                onPressed: () => print("Ahmed"),
                icon: Icon(Icons.person, size: 35, color: Colors.blue),
              ),

              SizedBox(height: 10),

              // third type
              ElevatedButton(
                onPressed: () => print("Elevated Button"),
                child: Text("Elevated Button"),
              ),

              SizedBox(height: 10),

              // fourth type
              TextButton(
                onPressed: () => print("Text Button"),
                child: Text("Text Button"),
              ),

              SizedBox(height: 10),

              // fifth type
              OutlinedButton(
                onPressed: () => print("Outlined Button"),
                child: Text("Outlined Button"),
              ),

              SizedBox(height: 10),

              // sixth type
              ElevatedButton.icon(
                onPressed: () => print("Elevated Icon Button"),
                icon: Icon(Icons.download),
                label: Text("Download"),
              ),

              SizedBox(height: 10),

              // seventh type
              TextButton.icon(
                onPressed: () => print("Text Icon Button"),
                icon: Icon(Icons.share),
                label: Text("Share"),
              ),

              SizedBox(height: 10),

              // eighth type
              OutlinedButton.icon(
                onPressed: () => print("Outlined Icon Button"),
                icon: Icon(Icons.edit),
                label: Text("Edit"),
              ),
            ],


            
          ),
        ),
      ),
    );
  }
}
