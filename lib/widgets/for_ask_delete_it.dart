// import 'package:flutter/material.dart';
//
// class TaskItem extends StatefulWidget {
//   const TaskItem({Key? key}) : super(key: key);
//
//   @override
//   State<TaskItem> createState() => _TaskItemState();
// }
//
// class _TaskItemState extends State<TaskItem> {
//   bool isChecked = false;
//   void checkboxCallBack(bool? checkboxState) {
//     setState(() {
//       isChecked = checkboxState ?? true;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'Task 1',
//         style: TextStyle(
//             decoration:
//             isChecked ? TextDecoration.lineThrough : TextDecoration.none),
//       ),
//       trailing: TaskCheckbox(isChecked, checkboxCallBack),
//     );
//
//     //This for the trying with CheckboxList
//     // return CheckboxList(isChecked, checkboxCallBack);
//   }
// }
//
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) toggleCheckboxState;
//
//   TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
//
// // ######TODO I can convert listTile To CheckboxList Just the transithion on styling can't do it try to figure it ^_^.
// // class CheckboxList extends StatelessWidget {
// //   final bool checkboxState;
// //   final Function(bool?) toggleCheckboxState;
// //
// //   CheckboxList(this.checkboxState, this.toggleCheckboxState);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return CheckboxListTile(
// //       title: const Text(
// //         "Buy Milk",
// //         style: TextStyle(
// //             // color: (checkboxState ? Colors.green : Colors.red),
// //             decoration: TextDecoration.lineThrough
// //             // checkboxState
// //             //     ? TextDecoration.lineThrough
// //             //     : TextDecoration.none,
// //             ),
// //       ),
// //       value: checkboxState,
// //       onChanged: toggleCheckboxState,
// //       controlAffinity:
// //           ListTileControlAffinity.platform, //  <-- leading Checkbox
// //     );
// //   }
// // }
