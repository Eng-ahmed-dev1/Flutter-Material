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
  GlobalKey<FormState> formkey = GlobalKey();
  String? username;
  String? phone;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TextFormField validator"),
        ),
        body: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                onSaved: (newValue) => {username = newValue},
                decoration: InputDecoration(hintText: "User Name"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "The User Name  Is Empty";
                  } else if (value.length > 10) {
                    return "The Value greater than 10";
                  }
                },
              ),
              TextFormField(
                onSaved: (newValue) => {phone = newValue},
                decoration: InputDecoration(hintText: "Phone"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "The Field Is Empty";
                  }
                  if (value.length > 20) {
                    return "The Value greater than 10";
                  }
                  if (value.length < 9) {
                    return "The Value less than 9";
                  }
                },
              ),
              MaterialButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    print("Valid And the Value");
                    print(username);
                    print(phone);
                  } else {
                    print("Not Valid");
                  }
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Valid"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
