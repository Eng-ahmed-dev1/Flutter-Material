import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

// If we need to use textformfiled widget must it be from the childern of Form widget
// and make a key for the form widget to access it from anywhere
class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formkey = GlobalKey();
  String? val;
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "The Field Is Empty";
                  } else if (value.length > 10) {
                    return "The Value greater than 10";
                  } else {
                    val = value;
                  }
                  return null;
                },
              ),
              MaterialButton(
                onPressed: () {
                  // this is run the validation
                  if (formkey.currentState!.validate()) {
                    print("Valid And the Value $val");
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
