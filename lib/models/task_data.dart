import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy anything 1'),
    Task(name: 'buy anything 2'),
    Task(name: 'buy anything 3'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle){
    final task = Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}