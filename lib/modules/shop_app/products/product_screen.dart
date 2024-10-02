// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/Model/home_model.dart';
import 'package:learning_app_on_udemy/shared/cubit/home_cubit.dart';
import 'package:learning_app_on_udemy/shared/cubit/home_state.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCupit(),
      child: BlocConsumer<HomeCupit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(children: [
            CarouselSlider(
              items: imgList
                  .map((e) => Image(
                        image: NetworkImage(e),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              options: CarouselOptions(
                  height: 200, initialPage: 0, viewportFraction: 1.0),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
                child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: List.generate(10, (index) => const ChildForGridView()),
            ))
          ]);
        },
      ),
    );
  }
}

class ChildForGridView extends StatelessWidget {
  const ChildForGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // padding: const EdgeInsets.all(8),
      color: Colors.grey[100],
      child: Column(children: [
        Stack(children: [
          Container(
            decoration: BoxDecoration(),
            width: double.infinity,
            child: Image(
              image: NetworkImage(
                'https://i.pinimg.com/564x/0c/64/4f/0c644fd02f2da04a2a2522287fbfdf9a.jpg',
              ),
              // width: double.infinity,
              height: 100,
              // color: Colors.red,
            ),
          ),
          Text('simple is the best')
        ]),
        InkWell(
          onTap: () {
            log("go lough on our stress");
          },
          child: Row(
            children: [Icon(Icons.heart_broken_outlined), Text('hey')],
          ),
        )
      ]),
    );
  }
}
