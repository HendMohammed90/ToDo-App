import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_item.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasklest>(
      builder: (context, taskList, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: TaskItem(
                isChecked: taskList.tasks[index].isChecked,
                taskText: taskList.tasks[index].taskTitel,
                callBackFunction: (checkboxState) {
                  taskList.changState(
                    taskList.tasks[index],
                  );
                },
              ),
              onLongPress: () {
                taskList.deletTask(taskList.tasks[index]);
              },
            );
          },
          itemCount: taskList.tasks.length,
// padding: const EdgeInsets.only(top: 20.0),
        );
      },
    );
  }
}
