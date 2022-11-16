import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      this.isChecked,
      this.taskTitle,
      this.checkBoxCallback,
      this.longPressCallback});
  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkBoxCallback;
  final void Function()? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback!,
      ),
    );
  }
}
