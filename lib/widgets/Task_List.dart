import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [Task(name: 'Buy Milk'), Task(name: 'Buy PayamPori')];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxcallBack: (checkboxState) {
              setState(() {
                tasks[index].toglleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
