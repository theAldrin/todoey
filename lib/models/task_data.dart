import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskname) {
    tasks.add(Task(name: taskname));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toglleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
