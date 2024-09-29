
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/Business%20copy/business_screen.dart';
import 'package:learning_app_on_udemy/modules/archive_tasks/archive_tasks.dart';
import 'package:learning_app_on_udemy/modules/counter/cubit/states.dart';
import 'package:learning_app_on_udemy/modules/done_task/done_task.dart';
import 'package:learning_app_on_udemy/modules/new_task/new_task.dart';
import 'package:learning_app_on_udemy/modules/news_app/settings_sceen/settings_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sport/sport_screen.dart';
import 'package:learning_app_on_udemy/modules/sciene%20copy/sciene_screen.dart';
import 'package:learning_app_on_udemy/shared/cubit/states.dart';

class AppCupit extends Cubit<AppStates> {

  AppCupit():super(AppInitialState());

  static  AppCupit get(context)=>  BlocProvider.of(context) ;
  
  int currentIndex = 0;
   List<Widget> screens = const[
    BusinessSccreen() ,
    ScieneScreen() ,
    SportScreen() ,
    SettingsScrreen()
  ] ;

  void changeIndex (int index){
    currentIndex =index ;
    emit(AppChangeBottomNavBarState());

  }

  
  
}