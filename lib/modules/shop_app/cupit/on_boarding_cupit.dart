import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/shop_app/cupit/on_boarding_state.dart';


class OnBoardingCupit extends Cubit<OnBoardingState> {
  OnBoardingCupit() : super(OnBoardingInitialState());

  static OnBoardingCupit get(context) => BlocProvider.of(context);

  late PageController pageViewController =PageController();
  late TabController tabController;
  int currentPageIndex = 0;

  // void changeIndex(int index) {
  //   _currentPageIndex = index;
  //   emit(AppChangeBottomNavBarState());
  // }

  void handlePageViewChanged(int currentIndex) {

    tabController.index = currentIndex;
    currentPageIndex = currentIndex;
    emit(OnPageChangeState());
  }
}
