import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screens/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTitle = 'To Do List';
    return ChangeNotifierProvider(
      create: (BuildContext context) => Tasklest(),
      child: MaterialApp(
        title: appTitle,
        home: TaskScreen(),
      ),
    );
  }
}
