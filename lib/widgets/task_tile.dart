import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TaskTile extends StatelessWidget {
  final String? taskTitle;
  final bool? isChecked;
  final void Function(bool?)? checkboxCallback;
  final void Function()? longPressCallback;

  TaskTile({this.taskTitle ,this.isChecked,this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle ?? "Nothing",
        style: TextStyle(
            decoration: isChecked ?? false ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked,
          onChanged: checkboxCallback,
      ),
      );
  }
}