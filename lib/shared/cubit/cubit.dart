import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/massenger/todo_app/archive_tasks/archive_tasks.dart';
import 'package:learning_app_on_udemy/modules/counter/cubit/states.dart';
import 'package:learning_app_on_udemy/modules/massenger/todo_app/done_task/done_task.dart';
import 'package:learning_app_on_udemy/modules/massenger/todo_app/new_task/new_task.dart';
import 'package:learning_app_on_udemy/modules/news_app/Business/business_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sciene/sciene_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/settings_sceen/settings_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sport/sport_screen.dart';
import 'package:learning_app_on_udemy/shared/cubit/states.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

class AppCupit extends Cubit<AppStates> {
  AppCupit() : super(AppInitialState());

  static AppCupit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = const [
    BusinessSccreen(),
    ScieneScreen(),
    SportScreen(),
    SettingsScrreen()
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  List<dynamic> business = [];

  void getBusiness() {
  emit(AppLoadingState());
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
      emit(AppGetBusinessSuccessState());
    } else {
      log('No business articles found.');
      emit(AppGetBusinessErrorState());
    }
  }).catchError((error) {
    log('Error fetching business news: ${error.toString()}');
    emit(AppGetBusinessErrorState());
  });
}

}
