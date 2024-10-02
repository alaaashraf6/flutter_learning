import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/news_app/Business/business_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sciene/sciene_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/settings_sceen/settings_screen.dart';
import 'package:learning_app_on_udemy/modules/news_app/sport/sport_screen.dart';
import 'package:learning_app_on_udemy/modules/social_app/social_login/cubit/social_login_states.dart';
import 'package:learning_app_on_udemy/shared/cubit/states.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

class SocialLoginCupit extends Cubit<SocialLoginStates> {
  SocialLoginCupit() : super(SocialLoginInitialState());

  static SocialLoginCupit get(context) => BlocProvider.of(context);

  

  void changePassVisibilty() {
   
  }


  }
