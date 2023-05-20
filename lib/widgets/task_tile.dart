import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxcallBack;

  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxcallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
