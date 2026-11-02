import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
// to access the bottom sheet u need to make a scaffold key 
// on the other hand If u need to get the bottom sheet u need to make scaffold messanger
class _HomepageState extends State<Homepage> {
  GlobalKey<ScaffoldState> sca = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sca,
      appBar: AppBar(title: Text("home page")),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              onPressed: () => {
                sca.currentState!.showBottomSheet((context) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 100,
                    color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Choose Image ", style: TextStyle(fontSize: 16)),
                        Container(height: 10),
                        Text("From Gallery", style: TextStyle(fontSize: 16)),
                        Text("From Camera ", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  );
                }),
              },
              textColor: Colors.white,
              color: Colors.red,
              child: Text("Show"),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(
                      label: "Cancel",
                      onPressed: () {
                        print("ok");
                      },
                    ),
                    duration: Duration(seconds: 3),
                    content: Text("Text Copied Successfully"),
                  ),
                ),
              },
              textColor: Colors.white,
              color: Colors.red,
              child: Text("Show"),
            ),
          ),
        ],
      ),
    );
  }
}
