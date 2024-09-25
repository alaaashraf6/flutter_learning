import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult(this.isFemale, this.result, this.age, {super.key});

  final bool isFemale;
  final int result;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('MBI Result'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isFemale ? 'Femaleee'  :'male'}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Result : ${result.toString()}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age : ${age.toString()}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
