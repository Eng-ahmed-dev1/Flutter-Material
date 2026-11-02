import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> drawerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: drawerkey,
        drawer: Drawer(
          elevation: 200,
          shadowColor: Colors.black,
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(60),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text("Ahmed"),
                        subtitle: Text("ahmed@gmail.com"),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Account"),
                  leading: Icon(Icons.account_balance_rounded),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Order"),
                  leading: Icon(Icons.online_prediction_rounded),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("About Us"),
                  leading: Icon(Icons.help),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Contact us"),
                  leading: Icon(Icons.phone),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        // endDrawer: Drawer(),
        appBar: AppBar(centerTitle: true, title: Text("Drawer")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () => {drawerkey.currentState!.openDrawer()},
                  child: Text("Open"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
