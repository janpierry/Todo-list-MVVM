class TaskModel {
  String name;
  String deadline;

  TaskModel({required this.name, required this.deadline});

  TaskModel.fromJson(Map<String, String> json) {
    return TaskModel(
      name: json['name'],
      deadline: json['deadline'],
    );
  }

  Map<String, String> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['deadline'] = this.deadline;
    return data;
  }
}
