import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/Model/UserModel.dart';

class UserItem extends StatelessWidget {
  const UserItem(this.user, {super.key});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20.0,
              child: Text(
                '${user.id}',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  user.phone,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            )
          ],
        ));
  }
}
