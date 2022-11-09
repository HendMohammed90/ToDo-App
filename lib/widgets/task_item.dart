import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final bool isChecked;
  final String taskText;
  final void Function(bool?)? callBackFunction;
  TaskItem({
    required this.isChecked,
    required this.taskText,
    required this.callBackFunction,
  });
  // void checkboxCallBack(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState ?? true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskText,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: callBackFunction,
          // onChanged: toggleCheckboxState,
        )
        // TaskCheckbox(isChecked, checkboxCallBack),
        );

    //This for the trying with CheckboxList
    // return CheckboxList(isChecked, checkboxCallBack);
  }
}

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

// ######TODO I can convert listTile To CheckboxList Just the transithion on styling can't do it try to figure it ^_^.
// class CheckboxList extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) toggleCheckboxState;
//
//   CheckboxList(this.checkboxState, this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       title: const Text(
//         "Buy Milk",
//         style: TextStyle(
//             // color: (checkboxState ? Colors.green : Colors.red),
//             decoration: TextDecoration.lineThrough
//             // checkboxState
//             //     ? TextDecoration.lineThrough
//             //     : TextDecoration.none,
//             ),
//       ),
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//       controlAffinity:
//           ListTileControlAffinity.platform, //  <-- leading Checkbox
//     );
//   }
// }
