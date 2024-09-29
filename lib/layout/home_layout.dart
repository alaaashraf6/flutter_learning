import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/modules/archive_tasks/archive_tasks.dart';
import 'package:learning_app_on_udemy/modules/done_task/done_task.dart';
import 'package:learning_app_on_udemy/modules/new_task/new_task.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  final List<Widget> screens = const[
    NewTasks() ,
    DoneTasks() ,
    ArchiveTasks()
  ] ;

  @override
  Widget build(BuildContext context) {
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
          currentIndex: currentIndex,
          onTap: (index) => {
                setState(() {
                  currentIndex = index;
                })
              },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks' , ),
            BottomNavigationBarItem(icon: Icon(Icons.check), label: 'Done'),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive_outlined), label: 'Archive'),
          ]),
          body: screens[currentIndex],
    );
  }
}
