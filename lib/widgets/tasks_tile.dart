import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TasksTile({required this.isChecked, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {}, //toggleCheckboxState,
      ),
    );
  }
}


// (bool? checkboxState) {
//           setState(
//             () {
//               isChecked = checkboxState;
//             },
//           );
//         },
