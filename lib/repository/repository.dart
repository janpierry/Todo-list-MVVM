import 'package:shared_preferences/shared_preferences.dart';
import 'package:testapp/mvvm/model/task_model.dart';
import 'package:testapp/repository/interface/interfaces.dart';

abstract class TaskRepository
    implements TaskAddInterface, TaskRemoveInterface, TaskUpdateInterface {}

class TaskSharedPrefferencesRepository implements TaskRepository {
  SharedPreferences _prefs = SharedPreferences.getInstance();

  @override
  void add(List<TaskModel> tasks) async {
    // TODO: implement add
    _prefs.setString('List_taskName',
        {'taskName': task.tackname, 'deadline': task.deadline});
    _prefs.setString('deadline', task.deadline);
  }

  @override
  void remove(TaskModel task) async {
    // TODO: implement remove
    _prefs.remove('taskName');
    _prefs.remove('deadline');
  }

  @override
  void update(TaskModel task) async {
    // TODO: implement update
    _prefs.setString('taskName', task.taskName);
    _prefs.setString('deadline', task.deadline);
  }


  Map<String, dynamic> toJson(List<TaskModel>)
}

class TaskMemoryRepository implements TaskRepository {
  List<TaskModel> _tasks = [];

  @override
  void add(TaskModel task) {
    _tasks.add(task);
  }

  @override
  void remove(TaskModel task) {
    _tasks.remove(task);
  }

  @override
  void update(TaskModel task) {
    // TODO: implement update
  }
}
