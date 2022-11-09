import 'package:flutter/material.dart';
import 'package:todo_app/models/task_model.dart';

class Tasklest extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskTitel: 'Make Bread', isChecked: false),
    Task(taskTitel: 'Make buy milk', isChecked: false),
    Task(taskTitel: 'Make candy', isChecked: false),
    Task(taskTitel: 'watch movie', isChecked: false),
    Task(taskTitel: 'do your research', isChecked: false),
  ];

  List<Task> get _list => tasks;

  void addTask(String newTask) {
    final newData = Task(taskTitel: newTask);
    tasks.add(newData);
    notifyListeners();
  }

  void changState(Task task) {
    task.toggelState();
    notifyListeners();
  }

  void deletTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
