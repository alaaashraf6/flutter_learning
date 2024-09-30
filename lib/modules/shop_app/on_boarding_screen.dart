import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/shop_app/cupit/on_boarding_cupit.dart';
import 'package:learning_app_on_udemy/modules/shop_app/cupit/on_boarding_state.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (BuildContext context) => OnBoardingCupit(),
      child: BlocConsumer<OnBoardingCupit, OnBoardingState>(
        listener: (BuildContext context, OnBoardingState states) {},
        builder: (BuildContext context, OnBoardingState states) {
          final onBoardingCupit = context.read<OnBoardingCupit>(); // Use context to get the cubit

          return Scaffold(
            appBar: AppBar(
              title: const Text('Page View'),
            ),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                PageView(
                  controller: onBoardingCupit.pageViewController,
                  onPageChanged: onBoardingCupit.handlePageViewChanged,
                  children: <Widget>[
                    Center(
                      child: Text('First Page', style: textTheme.titleLarge),
                    ),
                    Center(
                      child: Text('Second Page', style: textTheme.titleLarge),
                    ),
                    Center(
                      child: Text('Third Page', style: textTheme.titleLarge),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
