import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Buy Milk'), Task(name: 'Buy PayamPori')];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskname) {
    tasks.add(Task(name: taskname));
    notifyListeners();
  }
}
