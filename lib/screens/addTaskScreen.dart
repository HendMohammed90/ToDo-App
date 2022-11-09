import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  dynamic newTaskData;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            const Text(
              'ADD TASK',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: newTaskData,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'What We Should Do',
              ),
              onChanged: (val) {
                newTaskData = val;
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
                // print(newTaskData);
                // pushTaskItem(newTaskData);
                Provider.of<Tasklest>(context, listen: false)
                    .addTask(newTaskData);
                Navigator.of(context).pop();
              },
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
