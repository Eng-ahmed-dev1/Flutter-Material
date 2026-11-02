import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final fkey = GlobalKey<FormState>();
  String? user;
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              Form(
                key: fkey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 75,
                      child: TextFormField(
                        //autovalidateMode: AutovalidateMode.always,
                        onSaved: (username) {
                          user = username;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "User Name is required";
                          }
                          if (value.length < 8) {
                            return "UserName must be greater than 8 chars";
                          }
                          if (!value.contains("@")) {
                            return "Invalied Email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.red, width: 2),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.red, width: 2),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.6,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelText: "Email ",
                          labelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                          hintText: "Enter your email ",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    // Password feild
                    SizedBox(
                      width: 300,
                      height: 75,
                      child: TextFormField(
                        //autovalidateMode: AutovalidateMode.always,
                        onSaved: (password) {
                          pass = password;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password is required";
                          }
                          if (value.length < 8) {
                            return "Password must be greater than 8 chars";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.red, width: 2),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.red, width: 2),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.6,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelText: "Password ",
                          labelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                          hintText: "Enter your Password ",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(100, 40),
                        elevation: 5,
                      ),
                      onPressed: () {
                        if (fkey.currentState!.validate()) {
                          fkey.currentState!.save();
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            "/home",
                            (route) => false,
                          );
                        }
                      },
                      child: Text("Login", style: TextStyle()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
