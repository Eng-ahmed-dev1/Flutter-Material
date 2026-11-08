import 'package:flutter/material.dart';
import 'package:fullproject/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? userName;
  String? password;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passwordIsHidden = true;
  final GlobalKey<FormState> validationkey = GlobalKey<FormState>();
  // Login Method
  bool login(String userName, String pass) {
    if (userName != "Admin" || pass != "123456789") {
      return false;
    }
    return true;
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 50, 110, 144),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          backgroundColor: const Color.fromARGB(255, 38, 121, 144),
          centerTitle: true,
          title: Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 400,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 90,
                  blurStyle: BlurStyle.normal,
                  color: Colors.blueAccent,
                  offset: Offset(30, 50),
                  spreadRadius: 30,
                ),
              ],
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(255, 2, 109, 114),
            ),
            child: Form(
              key: validationkey,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Welcome, back user..!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  // Text field form for user name
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "the user name required";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        userName = newValue;
                      },
                      controller: userNameController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Enter your username",
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w200,
                        ),
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        labelText: "User Name",
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Password text fiele form field
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Password Is Required";
                        } else if (value.length < 8) {
                          return "Password Must Be At Least 8 Characters";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        password = newValue;
                      },
                      controller: passwordController,
                      obscureText: passwordIsHidden,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordIsHidden = !passwordIsHidden;
                            });
                          },
                          icon: passwordIsHidden
                              ? Icon(Icons.visibility_off_sharp)
                              : Icon(Icons.visibility_sharp),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w200,
                        ),
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  //Login button
                  ElevatedButton(
                    onPressed: () {
                      if (validationkey.currentState!.validate()) {
                        validationkey.currentState!.save();

                        if (login(userName!, password!)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text("Login Successfully!"),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Invalid Username or Password"),
                            ),
                          );
                        }
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
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
