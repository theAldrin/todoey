import 'package:flutter/material.dart';
import 'package:todoey/widgets/Task_List.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 30),
              child: AddTaskScreen(),
            )),
          );
        },
      ),
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 30,
                child: Icon(
                  Icons.list,
                  size: 50,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Text(
                'Todoey',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 0, 40),
              child: Text(
                '12 Tasks',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
