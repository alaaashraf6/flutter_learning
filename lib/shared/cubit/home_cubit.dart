import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/news_app/Business/business_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sciene/sciene_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/settings_sceen/settings_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sport/sport_screen.dart';
import 'package:learning_app_on_udemy/shared/cubit/home_state.dart';
import 'package:learning_app_on_udemy/shared/cubit/states.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

class HomeCupit extends Cubit<HomeState> {
  HomeCupit() : super(HomeInitialState());

  static HomeCupit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = const [
    BusinessSccreen(),
    ScieneScreen(),
    SportScreen(),
    SettingsScrreen()
  ];

  

  List<dynamic> business = [];

  void getBusiness() {
  emit(HomeLoadingState());
  DioHelper.getData(
    url: 'v2/top-headlines',
    query: {
      'country': 'us',
      'category': 'business',
      'apiKey': 'ea1574b01a0e47668def62d5af24676d',
    },
  ).then((value) {
    business = value.data['articles'] ?? [];
    
    if (business.isNotEmpty) {
      log(business[0]['title']);
      emit(HomeSuccessState());
    } else {
      log('No business articles found.');
      emit(HomeErrorState());
    }
  }).catchError((error) {
    log('Error fetching business news: ${error.toString()}');
    emit(HomeErrorState());
  });
}

}
