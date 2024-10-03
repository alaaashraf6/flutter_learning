// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/modules/mobile_screen.dart';
import 'package:learning_app_on_udemy/modules/native_code.dart';
import 'package:learning_app_on_udemy/modules/desktop_screen.dart';
import 'package:learning_app_on_udemy/modules/shop_app/products/product_screen.dart';
import 'package:learning_app_on_udemy/shared/bloc_observer.dart';
import 'package:learning_app_on_udemy/shared/network/local/cashe_helper.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CasheHelper.init();
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(child: Scaffold(
              // body: LoginScreen()),
              // body: MassengerScreen()
              // body: UserScreen()),
              // body: BMICalculator()),
              // body: HomeLayout()),
              // body: OnBoardingScreen()),
              //  body: ProductScreen()),
              // body : NativeCodeScreen())
              body: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
        log('${constraints.minWidth}');
        if (constraints.minWidth <= 580) {
          // ayh r
          return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.linear(0.5)),
              child: MobileScreen());
        }

        return DesktopScreen();
      }))
          // body: CounterScreen()),
          ),
    );
  }
}
