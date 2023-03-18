import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
   List<Task> _tasks = [
    Task(taskName: 'Bye milk'),
    Task(taskName: 'Read books'),
    Task(taskName: 'Playing cricket')
  ];

  int get taskCount => _tasks.length;

  void  addTask(String newTask){
    final task = Task(taskName: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task){
    task.toggelDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}