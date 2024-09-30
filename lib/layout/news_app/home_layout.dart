import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/massenger/todo_app/archive_tasks/archive_tasks.dart';
import 'package:learning_app_on_udemy/modules/massenger/todo_app/done_task/done_task.dart';
import 'package:learning_app_on_udemy/modules/massenger/todo_app/new_task/new_task.dart';
import 'package:learning_app_on_udemy/shared/cubit/cubit.dart';
import 'package:learning_app_on_udemy/shared/cubit/states.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(create: (BuildContext context)=> AppCupit()..getBusiness(),
    child: BlocConsumer<AppCupit , AppStates>( listener: (BuildContext context , AppStates states){} ,
    builder: (BuildContext context , AppStates states){

      return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'To Do List',
            style: TextStyle(color: Colors.white),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: AppCupit.get(context).currentIndex,
          onTap: (index) => {
                AppCupit.get(context).changeIndex(index)
              },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks' , ),
            BottomNavigationBarItem(icon: Icon(Icons.check), label: 'Done'),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive_outlined), label: 'Archive'),
          ]),
          body: AppCupit.get(context).screens[AppCupit.get(context).currentIndex] ,
    );
    }),);
  }
}
