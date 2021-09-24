import 'package:testapp/mvvm/model/task_model.dart';

abstract class TaskAddInterface {
  void add(TaskModel task);
}

abstract class TaskRemoveInterface {
  void remove(TaskModel task);
}

abstract class TaskUpdateInterface {
  void update(TaskModel task);
}
