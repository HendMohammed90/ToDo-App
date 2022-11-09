class Task {
  final String taskTitel;
  bool isChecked;

  Task({required this.taskTitel, this.isChecked = false});

  void toggelState() {
    isChecked = !isChecked;
  }
}
