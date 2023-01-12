import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Shoes'),
    Task(name: 'Eat food')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTile: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        ); // TaskTile
      }, // itemBuilder
      itemCount: tasks.length,
    ); // ListView.Builder
  } // Widget Build
}
