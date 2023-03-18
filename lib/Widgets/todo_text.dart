import 'package:flutter/material.dart';

class ToDoText extends StatelessWidget {
  ToDoText(
      {super.key,
      required this.taskName,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallBack});
  final bool isChecked;
  final String taskName;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallBack();
      },
      title: Text(
        taskName,
        style: TextStyle(
            fontSize: 20.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) {
            checkBoxCallBack(value);
          }),
    );
  }
}
