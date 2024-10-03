// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/modules/desktop_screen.dart';
import 'package:learning_app_on_udemy/modules/mobile_screen.dart';
import 'package:learning_app_on_udemy/shared/bloc_observer.dart';
import 'package:learning_app_on_udemy/shared/network/local/cashe_helper.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MinWidthExample(),
//   ));
// }

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
      home: Scaffold(
          appBar: AppBar(
//         title: Text('Min Width Example'),
              ),
          // body: LoginScreen()),
          // body: MassengerScreen()
          // body: UserScreen()),
          // body: BMICalculator()),
          // body: HomeLayout()),
          // body: OnBoardingScreen()),
          //  body: ProductScreen()),
          // body : NativeCodeScreen())
          body: SizedBox(
            width: double.infinity,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              log('${constraints.minWidth.toInt()}'); 

              if (constraints.minWidth <= 580) {
                return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: TextScaler.linear(0.5)),
                    child: MobileScreen());
              } else {
                return DesktopScreen();
              }
            }),
          )
          // body: CounterScreen()),

          ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MinWidthExample(),
//   ));
// }

class MinWidthExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Min Width Example'),
      ),
      body: Center(
        // Center widget
        child: Container(
          // Providing width constraint
          width: double.infinity, // Expand to fill available width
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              double minWidth = constraints.minWidth;

              return Center(
                child: Container(
                  width: 200, // Example width
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Min Width: $minWidth',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
