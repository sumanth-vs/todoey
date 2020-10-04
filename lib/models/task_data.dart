import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

class TaskList extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(String value) {
    _tasks.add(
      Task(name: value),
    );
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
