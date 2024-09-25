import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
var formKey = GlobalKey<FormState>();
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
            child: Form(
              key: formKey ,
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
                    validator: (value){
                      if ( value ==  null ||  value.isEmpty) {
                        return 'email address is requird';
                        
                      }
                      return null;
                      

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
                    validator: (value){
                      if (value== null|| value.isEmpty ) {
                        return 'the password id required';
                        
                      }
                      return null ;

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
                  defaultButtom(
                      title: 'Login',
                      bgColor: Colors.blue,
                      width: double.infinity,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                        log(emailController.text);
                          
                        }
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  defaultButtom(
                      title: 'Register',
                      bgColor: Colors.blue,
                      width: double.infinity,
                      onPressed: () {
                        log(passwordController.text);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   children: [
                  //     const Text('don\'t have accout'),
                  //     TextButton(
                  //         onPressed: () {},
                  //         child: const Text(
                  //           'Register Now',
                  //           style: TextStyle(color: Colors.blue),
                  //         ))
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
