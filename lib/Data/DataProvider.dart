import 'dart:collection';

import 'package:todo/Data/task.dart';
import 'package:flutter/foundation.dart';

class ProviderData extends ChangeNotifier {
  List<Task> _data = [
    Task(title: 'html and css'),
    Task(title: 'Nodejs And mongoDb'),
    Task(title: "React and javaScript")
  ];
  UnmodifiableListView getData() {
    return UnmodifiableListView(_data);
  }

  int countData() {
    return _data.length;
  }

  void addTask(Task task) {
    print(task.title);
    _data.add(task);
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toogleTask();
    notifyListeners();
  }

  void removeTsk(Task task) {
    _data.remove(task);
    notifyListeners();
  }
}
