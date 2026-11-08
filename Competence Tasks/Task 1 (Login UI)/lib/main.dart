import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.vertical(
                bottom: Radius.circular(50),
              ),
            ),
            centerTitle: true,
            title: Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Container(
              width: 500,
              height: 700,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent,
                    blurRadius: 90,
                    offset: Offset(30, 30),
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 30,
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Welcome back , User",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 75),
                  SizedBox(
                    width: 450,
                    child: TextField(
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter Your Name ',

                        prefixIcon: Icon(Icons.person_outline),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 75),
                  SizedBox(
                    width: 450,
                    child: TextField(
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                        hintText: "Enter your password ",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 100),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
