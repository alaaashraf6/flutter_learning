import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/modules/bmi_result/bmi_result.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool isFemale = true;
  double height = 180.0;
  int weight = 70;
  int age = 40;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFemale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: !isFemale ? Colors.blue[400] : Colors.grey[400],
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 70,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFemale = true;

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isFemale ? Colors.blue[400] : Colors.grey[400],
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.female,
                            size: 70,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[400],
              ),
              child: Column(
                children: [
                  const Text(
                    'HIGHT',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'weight-',
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Colors.blue,
                              mini: true,
                              child:
                                  const Icon(Icons.remove, color: Colors.white),
                            ),
                            FloatingActionButton(
                              heroTag: 'weight++',
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'age-',
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton(
                              heroTag:'age+',
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Colors.blue,
                              mini: true,
                              child: const Icon(Icons.add, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                  onPressed: () {
                    var result =weight/pow(height/100, 2);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                 BMIResult(isFemale, result.round(), age)));
                  },
                  child: const Text(
                    'Calculator',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
