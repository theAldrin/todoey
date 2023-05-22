import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxcallBack;
  final Function onLeftRightSwipe;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxcallBack,
      required this.onLeftRightSwipe});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        onLeftRightSwipe();
      },
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.deepPurple,
        value: isChecked,
        onChanged: checkBoxcallBack,
      ),
    );
  }
}
