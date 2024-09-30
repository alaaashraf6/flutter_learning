import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/shop_app/cupit/shop_login_states.dart';
import 'package:learning_app_on_udemy/shared/network/remote/dio_helper.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates> {
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);
// LoginModel = loginModel ;
  void UserLogin({required String email, required String password}) {
    emit(ShopLoginLoadingState());
    DioHelper.postData(url: '', data: {email: email, password: password})
        .then((value) {
      log(value.data);
      // loginModel = ShopLoginModel.fromJson(value.data)
      // log(loginModel.status)
      // log(loginModel.data.token)
      emit(ShopLoginSuccessState());
    }).catchError((error) {
      log(error);
    });
  }
}
