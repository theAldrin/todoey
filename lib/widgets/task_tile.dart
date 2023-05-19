import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallback(bool newvalue) {
    setState(() {
      isChecked = newvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Paal Medikuka',
        style: TextStyle(
            fontSize: 20,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxstate: isChecked,
        toggleCheckboxState: checkBoxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxstate;
  final Function toggleCheckboxState;
  TaskCheckBox(
      {required this.checkBoxstate, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.deepPurple,
        value: checkBoxstate,
        onChanged: toggleCheckboxState());
  }
}
