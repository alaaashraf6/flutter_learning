import 'package:learning_app_on_udemy/Model/UserModel.dart';

class ShopLoginModel {
  bool? status;
  String? message;
  UserModel? data;

  ShopLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    // data = json['data'] != null ? UserModel.fromJson(json['data']) : null;
  }
}
