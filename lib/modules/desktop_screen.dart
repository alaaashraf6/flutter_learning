// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  DesktopScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.teal,
            child: Column(
              children: [],
            ),
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        color: Colors.blue,
                        minWidth: 100,
                        onPressed: () {
                          String email = emailController.text;
                          String password = passwordController.text;
                          log("Email: $email, Password: $password");
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Logging in...')),
                          );
                        },
                        child: Text("Login"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MaterialButton(
                        color: Colors.red[300],
                        minWidth: 100,
                        onPressed: () {
                          log(" Go back");
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Go back')));
                        },
                        child: Text("Back"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
