import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/layout/news_app/home_layout.dart';
import 'package:learning_app_on_udemy/modules/Counter/counter_screen.dart';
import 'package:learning_app_on_udemy/modules/bmi/bmi_calculator.dart';
import 'package:learning_app_on_udemy/modules/shop_app/on_boarding_screen.dart';
import 'package:learning_app_on_udemy/modules/shop_app/products/product_screen.dart';
import 'package:learning_app_on_udemy/modules/users/userItem.dart';
import 'package:learning_app_on_udemy/modules/users/user_screen.dart';
import 'package:learning_app_on_udemy/modules/login/login_screen.dart';
import 'package:learning_app_on_udemy/modules/massenger/massenger_screen.dart';
import 'package:learning_app_on_udemy/shared/bloc_observer.dart';
import 'package:learning_app_on_udemy/shared/network/local/cashe_helper.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
            // body: LoginScreen()),
            // body: MassengerScreen()
            // body: UserScreen()),
            // body: BMICalculator()),
            // body: HomeLayout()),
            // body: OnBoardingScreen()),
           body: ProductScreen()),
        // body: CounterScreen()),
      ),
    );
  }
}
