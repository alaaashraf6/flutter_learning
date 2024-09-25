import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/BMICalculator/bmi_calculator.dart';
import 'package:learning_app_on_udemy/Users/userItem.dart';
import 'package:learning_app_on_udemy/Users/user_screen.dart';
import 'package:learning_app_on_udemy/login_screen.dart';
import 'package:learning_app_on_udemy/Massenger/massenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Flutter Demo',
  //     home: SafeArea(
  //       child: Scaffold(
  //         body: Padding(
  //           padding: const EdgeInsets.all(50),
  //           child: Container(

  //             decoration: const BoxDecoration(
  //               // borderRadius: BorderRadius.circular(20),
  //               borderRadius: BorderRadiusDirectional.only(
  //                 topStart: Radius.circular(20) ,
  //                 topEnd: Radius.circular(20)
  //               )
  //             ),
  //             clipBehavior: Clip.antiAliasWithSaveLayer,
  //             child: Stack(
  //               alignment: Alignment.bottomCenter,
  //               children: [
  //                 const Image(
  //                   image: NetworkImage(
  //                       'https://th.bing.com/th/id/OIP.ZATvtJTychCwqXgJ-n2xPQHaF6?rs=1&pid=ImgDetMain'),
  //                   width: 200,
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.symmetric(vertical: 5),
  //                   width: 200,
  //                   color:Colors.teal.withOpacity(0.7) ,
  //                   child: const Text(
  //                     'Alaa Loly',
  //                     textAlign: TextAlign.center,
  //                     style: TextStyle(
  //                       fontSize: 20,
  //                       color: Colors.white
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
            // body: LoginScreen()
            // body: MassengerScreen()
            // body: UserScreen()),
            body: BMICalculator()),
      ),
    );
  }
}
