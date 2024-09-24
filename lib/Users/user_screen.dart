import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/Model/UserModel.dart';
import 'package:learning_app_on_udemy/Users/userItem.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = [
      UserModel(id: 1, name: 'Alaa', phone: '+20114281567'),
      UserModel(id: 2, name: 'Shiko', phone: '+20114281567'),
      UserModel(id: 3, name: 'Mesho', phone: '+20114281567'),
      UserModel(id: 4, name: 'Maro', phone: '+20114281567'),
      UserModel(id: 5, name: 'Darsh', phone: '+20114281567'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Users',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (condext, index) => UserItem(users[index]),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10.0,
        ),
        itemCount: users.length,
      ),
    );
  }
}
