import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/counter/cubit/cubit.dart';
import 'package:learning_app_on_udemy/modules/counter/cubit/states.dart';
import 'package:learning_app_on_udemy/shared/components/components.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer(
        listener: (context, state) => {
          if(state is CounterMinustate){
            log(state.counter.toString())
          }

        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text('Counter'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    CounterCubit.get(context).minus();
                  },
                ),
                Text('${CounterCubit.get(context).counter}'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    CounterCubit.get(context).plus();

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
