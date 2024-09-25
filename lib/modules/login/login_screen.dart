import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    // log(value);
                  },
                  onChanged: (value) {
                    // log(value);
                  },
                  decoration: const InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value) {
                    // log(value);
                  },
                  onChanged: (value) {
                    // log(value);
                  },
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      log(emailController.toString());
                      log(passwordController.toString());
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text('don\'t have accout'),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register Now',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
